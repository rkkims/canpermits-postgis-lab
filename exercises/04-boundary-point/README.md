# Exercise 04 — Decide what a boundary point means

**Level:** Foundations  
**Prerequisites:** 02  
**PostgreSQL first:** joins  
**Portfolio candidate:** Optional

## Real CanPermits context

CanPermits assigns geocoded permits to neighbourhoods and address points to parcels or constraint areas. A point exactly on a polygon edge can behave differently from a point in its interior, and two neighbouring polygons may claim the same edge. That decision affects which area a user sees in a permit dossier and how unmatched records are counted.

## Learning objective

Explain interior and boundary-inclusive membership.

## Problem

Test points inside, outside, and on an edge. State the application rule for the edge point.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

All three points have an explicit, defensible classification.

## Edge cases to test

Shared edge; polygon hole; NULL point.

## Concepts to research

ST_Within, ST_Contains, ST_Covers, ST_Intersects.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/load.py` — _assign_neighbourhoods
- `../../../canpermits-reverse-engineering/etl/toronto_constraints.py` — resolve_constraints

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
