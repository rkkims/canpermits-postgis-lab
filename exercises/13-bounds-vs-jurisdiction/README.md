# Exercise 13 — Distinguish a map rectangle from a jurisdiction

**Level:** Correctness and edge cases  
**Prerequisites:** 05, 06  
**PostgreSQL first:** joins  
**Portfolio candidate:** Yes

## Real CanPermits context

Map extents are derived from permits; authoritative city boundaries are separate polygons.

## Learning objective

Recognize bbox filtering as different from membership.

## Problem

Classify points against both a rectangular map extent and a city polygon; choose the appropriate use of each.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

The rectangle-only false positive is visible and explained.

## Edge cases to test

Overlapping rectangles; islands; outlier-expanded bounds; revised boundary.

## Concepts to research

ST_MakeEnvelope, ST_Intersects, polygon membership, ST_Extent.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/db/migrations/260_municipality_map_bounds.sql`
- `../../../canpermits-reverse-engineering/db/migrations/292_municipality_boundary.sql`
- `../../../canpermits-reverse-engineering/web/helpers/dossier/citywide.py` — _muni_bounds,_bbox_sql

## Portfolio value

Strong case-study candidate for the source → validation → storage → reasoning → correctness → performance narrative.
