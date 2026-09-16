# Exercise 09 — Determine the zones affecting a parcel

**Level:** Real CanPermits operations  
**Prerequisites:** 07, 08  
**PostgreSQL first:** joins, aggregates, CTEs  
**Portfolio candidate:** Optional

## Real CanPermits context

A CanPermits premise may occupy a parcel touched by several zoning polygons. The dossier needs to distinguish a genuinely split-zoned parcel from one that merely meets another zone at its edge or has a tiny overlay sliver. The source zoning designations should remain traceable while the parcel-level result stays understandable to a reader.

## Learning objective

Reason about material polygon overlap.

## Problem

Report distinct parcel designations and define treatment for touching or tiny sliver intersections.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Meaningful coverage is distinguished from contact by your stated rule.

## Edge cases to test

Overlapping zones; invalid polygon; sliver; repeated designation; no zone.

## Concepts to research

ST_Intersects, ST_Intersection, ST_Area, geometry versus geography.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/toronto_zoning_parcel_rehome.py` — build_parcel_zone_map
- `../../../canpermits-reverse-engineering/db/migrations/170_premise_zoning_parcel_binding.sql`

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
