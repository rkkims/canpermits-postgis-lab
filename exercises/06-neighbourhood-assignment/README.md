# Exercise 06 — Assign permits to neighbourhoods

**Level:** Real CanPermits operations  
**Prerequisites:** 04  
**PostgreSQL first:** joins, foreign keys  
**Portfolio candidate:** Yes

## Real CanPermits context

After permits acquire geometry, CanPermits attaches neighbourhood and territory IDs for area dashboards and permit browsing. The candidate polygons are scoped to the permit's municipality because nearby Canadian cities can share edges or have overlapping map extents. A missing point or uncertain polygon match must remain visible in data-quality counts rather than quietly becoming a misleading area assignment.

## Learning objective

Make a municipality-scoped spatial assignment and count unresolved records.

## Problem

Assign each eligible permit to a matching neighbourhood, reporting matched, unmatched, and ambiguous cases.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Interior points match their neighbourhood; missing and ambiguous cases are measurable.

## Edge cases to test

Shared edge; overlap; wrong municipality; moved point with stale assignment.

## Concepts to research

Spatial joins, ST_Within, ST_Covers, foreign keys.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/load.py` — _assign_neighbourhoods,_assign_territories
- `../../../canpermits-reverse-engineering/db/migrations/056_neighbourhoods.sql`

## Portfolio value

Strong case-study candidate for the source → validation → storage → reasoning → correctness → performance narrative.
