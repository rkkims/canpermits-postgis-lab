# Exercise 15 — Make a metre-based radius query indexable

**Level:** Performance and engineering decisions  
**Prerequisites:** 10  
**PostgreSQL first:** indexes, planner, EXPLAIN  
**Portfolio candidate:** Yes

## Real CanPermits context

Dossier radius searches use metres, while existing indexes may target a different expression.

## Learning objective

Understand index-expression matching and query plans.

## Problem

Scale synthetic points, compare radius-query plans before and after an appropriate index, and explain measured changes.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Report index used, timing, rows examined, and conditions under which it helps.

## Edge cases to test

Tiny table; broad radius; NULL; changed cast or expression.

## Concepts to research

GiST, expression and partial indexes, ST_DWithin, EXPLAIN (ANALYZE, BUFFERS).

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/db/migrations/182_permits_geog_gist.sql`
- `../../../canpermits-reverse-engineering/etl/calgary_active_construction_proximity.py` — resolve_active_construction_proximity

## Portfolio value

Strong case-study candidate for the source → validation → storage → reasoning → correctness → performance narrative.
