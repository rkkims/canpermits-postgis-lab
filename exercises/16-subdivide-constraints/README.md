# Exercise 16 — Speed up intersections with large constraint polygons

**Level:** Performance and engineering decisions  
**Prerequisites:** 09, 12  
**PostgreSQL first:** CTEs, planner  
**Portfolio candidate:** Optional

## Real CanPermits context

Toronto constraint layers include large, detailed polygons that are intersected with many parcel footprints. Even when a spatial index narrows candidates, exact intersection against a very complex shape can dominate runtime. CanPermits prepares smaller geometry pieces for this hot path, which creates a second obligation: the final parcel coverage must not be double-counted.

## Learning objective

Separate index filtering from exact-geometry cost.

## Problem

Compare intersections using a complex source polygon and a divided representation; verify equivalent parcel answers.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Measured plans explain speed changes without inflated coverage or counts.

## Edge cases to test

Parcel intersects several pieces; edge touch; invalid source; holes.

## Concepts to research

ST_Subdivide, GiST, ST_Intersects, ST_Intersection, aggregation.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/toronto_constraints.py` — rebuild_subdivisions,resolve_constraints

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
