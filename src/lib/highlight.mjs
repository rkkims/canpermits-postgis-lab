import { createHighlighter } from 'shiki';

const highlighter = await createHighlighter({ themes: ['github-dark'], langs: ['sql'] });

export function highlightedLines(code) {
  return highlighter.codeToTokens(code.trimEnd(), { lang: 'sql', theme: 'github-dark' }).tokens;
}
