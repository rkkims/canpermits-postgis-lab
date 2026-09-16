# Exercise 08 — Ingest a zoning polygon feed safely

**Level:** Real CanPermits operations  
**Prerequisites:** 03  
**PostgreSQL first:** transactions, upsert  
**Portfolio candidate:** Yes

## Real CanPermits context

CanPermits loads zoning areas from several municipal GIS portals into PostGIS tables that the citywide map and property dossier can query. Feed records carry source IDs, designations, dates, raw attributes, and polygon geometry, but some rows are incomplete or topologically invalid. The loader must make reruns auditable while preserving enough source detail to explain a displayed zone later.

## Learning objective

Separate feed identity, geometry normalization, and repeatable loading.

## Problem

Load the feed, preserve raw attributes, report skipped records, and define rerun behavior.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Each accepted row is queryable; skips and updates are accounted for.

## Edge cases to test

Repair changes type; empty repair; duplicate ID; partial failure.

## Concepts to research

ST_GeomFromGeoJSON, ST_IsValid, ST_MakeValid, unique constraints, transactions.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/citywide_zoning_ingest.py` — load_zoning_polygons
- `../../../canpermits-reverse-engineering/db/migrations/291_citywide_zoning_seven_cities.sql`

## Portfolio value

Strong case-study candidate for the source → validation → storage → reasoning → correctness → performance narrative.
