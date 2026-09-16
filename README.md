# CanPermits PostGIS lab

My personal PostGIS practice and portfolio workspace, based on spatial problems in the private CanPermits source checkout. [CanPermits](https://canpermits.com/) was a Canadian building permit aggregation platform I previously operated; its site is now an archived demonstration. Each exercise uses synthetic data and has no solution in its prompt.

The public presentation is an Astro site built from these same files. Run `npm ci && npm run dev` to preview it locally. The site includes source context, a paired before/after evidence view, syntax-highlighted SQL, and line annotations that appear on hover, keyboard focus, or click. GitHub Actions publishes the static build to GitHub Pages.

## Start

1. Start a disposable database with `docker compose up -d`.
2. Open the exercise `README.md`. Preview the actual rows in `test-input.json`, then run `schema.sql` and `fixtures.sql` in a fresh scratch database. The JSON is a readable snapshot; the SQL files are what load the database.
3. Write your answer in `attempt.sql` and run it in that database.
4. Work through the prepared cases in `tests.md`, adding any extra input they request. Record observed results and pass/fail there. Save the result rows you want to show publicly in `test-output.csv`.
5. Add line-specific explanations to `annotations.yml`. Use `evidence.yml` to attach before/after CSVs or images if useful.
6. After your own attempt, inspect the CanPermits source files listed in the exercise and write `reflection.md`.

Example for exercise 01, using a fresh database:

```sh
docker compose exec db createdb -U lab lab_01
docker compose exec -T db psql -U lab -d lab_01 < exercises/01-coordinate-quality/schema.sql
docker compose exec -T db psql -U lab -d lab_01 < exercises/01-coordinate-quality/fixtures.sql
docker compose exec -T db psql -U lab -d lab_01 < exercises/01-coordinate-quality/attempt.sql
```

Exercise schemas are independent. Keep each exercise in its own database so names and data cannot collide. The CanPermits source is at `../canpermits-reverse-engineering`; its implementation is an answer key to read later.

There are 90 prepared test cases, five per exercise. Some have a fixed expected result; others ask you to document an engineering policy and verify that your SQL applies it consistently. Test cases describe inputs and observations, not completed SQL.

The site’s test-case section shows the first rows of the actual input snapshot (`test-input.json`) and links to that full file and the runnable `fixtures.sql`. Every exercise also has `test-output.csv`, initially an empty template. After running your own SQL, replace its header or add rows with the result you want to present; the site will show its first rows and offer the full output file for download. Keep detailed reasoning and pass/fail notes in `tests.md`.

## Present your solution

Write runnable SQL in `attempt.sql`. Then add line notes in `annotations.yml`:

```yaml
- lines: 12-16
  anchor: "a distinctive phrase from these lines"
  title: Boundary decision
  why: "My reason for this choice and the alternative I tested."
  evidence: "See tests.md, shared-edge case."
```

The `anchor` is checked during the build so a moved annotation does not silently describe the wrong line. Exercise 01 has a demonstration annotation on its **fixture**, leaving its answer blank.

Use `evidence.yml` to attach your before/after result. For example, after creating `after.csv` in the exercise folder:

```yaml
after:
  title: Result of my SQL
  description: What changed and how I verified it.
  csv: after.csv
```

The site also accepts `image: after.png` with an `alt:` description. CSV previews show up to 12 rows. Keep public evidence synthetic or appropriately licensed; the site does not copy records from the private CanPermits database.

## Progression

| Level | Exercises |
|---|---|
| 1 — Foundations | 01–04 |
| 2 — Real operations | 05–10 |
| 3 — Correctness | 11–14 |
| 4 — Performance and engineering | 15–18 |

| # | Exercise |
|---|---|
| 01 | [Admit or quarantine a permit coordinate](exercises/01-coordinate-quality/README.md) |
| 02 | [Establish a common CRS](exercises/02-crs-normalization/README.md) |
| 03 | [Store mixed Polygon and MultiPolygon features](exercises/03-polygon-types/README.md) |
| 04 | [Decide what a boundary point means](exercises/04-boundary-point/README.md) |
| 05 | [Import an authoritative municipality boundary](exercises/05-municipality-boundary/README.md) |
| 06 | [Assign permits to neighbourhoods](exercises/06-neighbourhood-assignment/README.md) |
| 07 | [Bind an address point to a parcel](exercises/07-parcel-binding/README.md) |
| 08 | [Ingest a zoning polygon feed safely](exercises/08-zoning-ingest/README.md) |
| 09 | [Determine the zones affecting a parcel](exercises/09-parcel-zones/README.md) |
| 10 | [Find nearby development activity](exercises/10-nearby-development/README.md) |
| 11 | [Resolve overlapping or shared-boundary matches](exercises/11-ambiguous-matches/README.md) |
| 12 | [Repair, reject, or quarantine invalid polygons](exercises/12-invalid-polygons/README.md) |
| 13 | [Distinguish a map rectangle from a jurisdiction](exercises/13-bounds-vs-jurisdiction/README.md) |
| 14 | [Detect an identifier that is not a physical parcel key](exercises/14-reused-parcel-id/README.md) |
| 15 | [Make a metre-based radius query indexable](exercises/15-radius-index/README.md) |
| 16 | [Speed up intersections with large constraint polygons](exercises/16-subdivide-constraints/README.md) |
| 17 | [Design a scalable map-viewport filter](exercises/17-viewport-filter/README.md) |
| 18 | [Design a repeatable, bounded WFS ingest](exercises/18-wfs-ingest/README.md) |

Recommended path: `01 → 02 → 03 → 05 → 08 → 12 → 18`; branch from `02 → 04 → 06 → 11 → 13`, from `04 → 07 → 14 → 09`, and from `04 → 10 → 15`. Finish `16` after `09` and `12`, and `17` after `13` and `15`.

At 4–6 focused hours weekly, the suggested schedule is ten weeks: foundations in weeks 1–2, ingestion in 3, assignment in 4, overlay and proximity in 5, correctness in 6–7, performance in 8–9, and review and portfolio outlines in 10. Adjust the pace to preserve independent attempts.

## Portfolio

Start with exercises **05, 12, 08, 06, 13, and 15**. Together they cover public source → validation → storage → spatial reasoning → correctness → performance. Use `portfolio/case-study-template.md` to draft after solving them.
