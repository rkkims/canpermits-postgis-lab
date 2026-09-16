# Exercise 12 — Repair, reject, or quarantine invalid polygons

**Level:** Correctness and edge cases  
**Prerequisites:** 03, 08  
**PostgreSQL first:** constraints, transactions  
**Portfolio candidate:** Yes

## Real CanPermits context

Public GIS polygons are not guaranteed to satisfy PostGIS validity rules. A self-intersection may prevent insertion into a typed zoning or parcel table, while repairing it may create several polygon parts or discard non-area pieces. CanPermits must decide whether the repaired shape still represents the source feature and preserve an audit trail for rejected or changed rows.

## Learning objective

Evaluate validity and consequences of repair.

## Problem

Produce a validation report and choose an auditable accept/repair/quarantine policy.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Accepted rows satisfy target type and validity; every source has an outcome.

## Edge cases to test

GeometryCollection after repair; zero area; changed area; missing geometry.

## Concepts to research

ST_IsValid, ST_IsValidReason, ST_MakeValid, ST_CollectionExtract, ST_IsEmpty.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/citywide_zoning_ingest.py` — load_zoning_polygons
- `../../../canpermits-reverse-engineering/etl/ingest_economic_source_layers.py` — load_layer

## Portfolio value

Strong case-study candidate for the source → validation → storage → reasoning → correctness → performance narrative.
