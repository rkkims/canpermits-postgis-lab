# Exercise 14 — Detect an identifier that is not a physical parcel key

**Level:** Correctness and edge cases  
**Prerequisites:** 07, 09  
**PostgreSQL first:** grouping, uniqueness  
**Portfolio candidate:** Optional

## Real CanPermits context

A source ID can label distant parcel polygons and corrupt parcel-level zoning.

## Learning objective

Separate source identifiers from physical spatial entities.

## Problem

Determine which parcel IDs are safe for zone aggregation and define fallback for ambiguous IDs.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Distant parcels with one ID do not inherit each other’s zones.

## Edge cases to test

Duplicate copy of same polygon; multipart parcel; overlap; missing ID.

## Concepts to research

Grouping, ST_Equals, ST_Intersects, spatial identity.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/toronto_zoning_parcel_rehome.py` — build_parcel_zone_map

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
