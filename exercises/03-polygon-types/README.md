# Exercise 03 — Store mixed Polygon and MultiPolygon features

**Level:** Foundations  
**Prerequisites:** 02  
**PostgreSQL first:** JSONB, unique keys  
**Portfolio candidate:** Optional

## Real CanPermits context

Statistics Canada municipality outlines and municipal zoning layers do not all have the same polygon shape: a city may have one connected area, islands, or disjoint pieces. CanPermits stores these as typed PostGIS geometries so downstream map and spatial-join code sees a predictable family of shapes. The economic source-layer schema also had to accommodate non-polygon source layers, showing why geometry type belongs in the ingestion contract.

## Learning objective

Understand geometry subtypes and typed columns.

## Problem

Load polygonal GeoJSON into a MultiPolygon target, preserve IDs, and report incompatible feature types.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Both polygon features are represented; the line has an explicit rejection or quarantine outcome.

## Edge cases to test

Empty geometry; missing geometry; duplicate ID; hole; GeometryCollection.

## Concepts to research

ST_GeomFromGeoJSON, ST_GeometryType, ST_Multi.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/pipeline_municipality_boundaries.py` — _to_multipolygon_wkt
- `../../../canpermits-reverse-engineering/etl/ingest_economic_source_layers.py` — to_multi_geojson
- `../../../canpermits-reverse-engineering/db/migrations/093_economic_source_polygons_geom_any.sql`

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
