import { listExercises } from '../../../lib/content.mjs';

export function getStaticPaths() {
  return listExercises().map((exercise) => ({ params: { slug: exercise.folder }, props: { exercise } }));
}

export function GET({ props }) {
  return new Response(props.exercise.testOutput, {
    headers: { 'Content-Type': 'text/csv; charset=utf-8' },
  });
}
