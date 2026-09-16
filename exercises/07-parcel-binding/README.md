# Exercise 07 — Bind an address point to a parcel

**Level:** Real CanPermits operations  
**Prerequisites:** 04  
**PostgreSQL first:** joins, grouping  
**Portfolio candidate:** Optional

## Real CanPermits context

Toronto and Victoria address points are associated with parcel polygons.

## Learning objective

Resolve spatial matches while accounting for multiple candidates.

## Problem

Identify a parcel for each point or record why no reliable parcel was found.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Matches are reproducible; unresolved and multiple matches are visible.

## Edge cases to test

Duplicate parcel; shared edge; overlap; missing coordinate.

## Concepts to research

Point-in-polygon, deterministic selection, GiST.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/toronto_property_boundaries.py` — resolve_premises
- `../../../canpermits-reverse-engineering/etl/victoria_parcels.py` — resolve_premises

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
