import { listExercises, loadAnnotations, readEvidenceFile } from '../src/lib/content.mjs';

const exercises = listExercises();
for (const exercise of exercises) {
  loadAnnotations(exercise, 'annotations.yml', exercise.attempt);
  loadAnnotations(exercise, 'fixture-annotations.yml', exercise.fixtures);
  for (const side of ['before', 'after']) {
    const item = exercise.evidence?.[side];
    if (item?.csv) readEvidenceFile(exercise, item.csv);
    if (item?.image) readEvidenceFile(exercise, item.image);
  }
}
console.log(`Validated ${exercises.length} exercise pages and annotation anchors.`);
