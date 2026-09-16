import { listExercises } from '../../../lib/content.mjs';

export function getStaticPaths() {
  return listExercises().map((exercise) => ({ params: { slug: exercise.folder }, props: { exercise } }));
}

export function GET({ props }) {
  return new Response(props.exercise.fixtures, {
    headers: { 'Content-Type': 'text/plain; charset=utf-8' },
  });
}
