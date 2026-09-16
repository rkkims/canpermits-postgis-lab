import { readFileSync, readdirSync, existsSync } from 'node:fs';
import { join, basename } from 'node:path';
import YAML from 'yaml';

export const exerciseRoot = join(process.cwd(), 'exercises');
const read = (path) => readFileSync(path, 'utf8');
const section = (text, heading) => {
  const start = text.indexOf(`## ${heading}\n`);
  if (start < 0) return '';
  const rest = text.slice(start + heading.length + 4);
  const end = rest.search(/^## /m);
  return (end < 0 ? rest : rest.slice(0, end)).trim();
};

export function listExercises() {
  return readdirSync(exerciseRoot, { withFileTypes: true })
    .filter((entry) => entry.isDirectory() && /^\d\d-/.test(entry.name))
    .map((entry) => {
      const folder = entry.name;
      const dir = join(exerciseRoot, folder);
      const markdown = read(join(dir, 'README.md'));
      const lines = markdown.split('\n');
      const match = lines[0].match(/^# Exercise (\d+) — (.+)$/);
      if (!match) throw new Error(`Invalid exercise title: ${folder}`);
      const level = markdown.match(/\*\*Level:\*\* ([^\n]+)/)?.[1]?.trim() ?? '';
      const metadataPath = join(dir, 'evidence.yml');
      const evidence = existsSync(metadataPath) ? YAML.parse(read(metadataPath)) : {};
      return {
        folder, dir, number: match[1], title: match[2], level,
        context: section(markdown, 'Real CanPermits context'),
        objective: section(markdown, 'Learning objective'),
        problem: section(markdown, 'Problem'),
        expected: section(markdown, 'Expected behavior'),
        edgeCases: section(markdown, 'Edge cases to test'),
        concepts: section(markdown, 'Concepts to research'),
        sourceRefs: section(markdown, 'Relevant source files — inspect after attempting')
          .split('\n').filter(Boolean).map((line) => {
            const match = line.match(/^- `([^`]+)`(?: — (.*))?$/);
            return match ? `${match[1].replace('../../../canpermits-reverse-engineering/', '')}${match[2] ? ` · ${match[2]}` : ''}` : line;
          }),
        portfolio: markdown.includes('**Portfolio candidate:** Yes'),
        schema: read(join(dir, 'schema.sql')),
        fixtures: read(join(dir, 'fixtures.sql')),
        attempt: read(join(dir, 'attempt.sql')),
        evidence,
      };
    }).sort((a, b) => a.number.localeCompare(b.number));
}

export function loadAnnotations(exercise, filename, code) {
  const path = join(exercise.dir, filename);
  if (!existsSync(path)) return [];
  const annotations = YAML.parse(read(path)) ?? [];
  if (!Array.isArray(annotations)) throw new Error(`${path}: expected a list`);
  const lines = code.trimEnd().split('\n');
  return annotations.map((note, index) => {
    const [start, end] = String(note.lines).split('-').map(Number);
    if (!Number.isInteger(start) || !Number.isInteger(end || start) || start < 1 || (end || start) > lines.length || (end || start) < start)
      throw new Error(`${path}: invalid line range at note ${index + 1}`);
    if (!note.title || !note.why) throw new Error(`${path}: title and why are required at note ${index + 1}`);
    if (note.anchor && !lines.slice(start - 1, end || start).some((line) => line.includes(note.anchor)))
      throw new Error(`${path}: anchor no longer matches lines ${note.lines}`);
    return { ...note, start, end: end || start, id: `${basename(exercise.dir)}-${filename}-${index}` };
  });
}

export function readEvidenceFile(exercise, relativePath) {
  if (!relativePath || relativePath.includes('..') || relativePath.startsWith('/'))
    throw new Error(`Unsafe evidence path in ${exercise.folder}`);
  const path = join(exercise.dir, relativePath);
  if (!existsSync(path)) throw new Error(`Missing evidence: ${path}`);
  return read(path);
}

export function evidenceImage(exercise, relativePath) {
  if (!relativePath || relativePath.includes('..') || relativePath.startsWith('/'))
    throw new Error(`Unsafe evidence image path in ${exercise.folder}`);
  const path = join(exercise.dir, relativePath);
  if (!existsSync(path)) throw new Error(`Missing evidence image: ${path}`);
  const mime = relativePath.endsWith('.png') ? 'image/png' : relativePath.endsWith('.webp') ? 'image/webp' : relativePath.endsWith('.svg') ? 'image/svg+xml' : 'image/jpeg';
  return `data:${mime};base64,${readFileSync(path).toString('base64')}`;
}
