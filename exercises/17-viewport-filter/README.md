# Exercise 17 — Design a scalable map-viewport filter

**Level:** Performance and engineering decisions  
**Prerequisites:** 05, 08, 13, 15  
**PostgreSQL first:** indexes, planner  
**Portfolio candidate:** Optional

## Real CanPermits context

Citywide endpoints fetch zoning features inside a user viewport.

## Learning objective

Choose an index-compatible filter and measure output geometry cost.

## Problem

Fetch features meeting small and broad viewports; inspect plans and define geometry detail for response.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Crossing features follow your rule; output size and latency are documented.

## Edge cases to test

Edge touch; broad viewport; invalid geometry; simplification removes narrow feature.

## Concepts to research

ST_MakeEnvelope, ST_Intersects, GiST, ST_SimplifyPreserveTopology, ST_AsGeoJSON.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/web/helpers/dossier/citywide.py` — _bbox_sql
- `../../../canpermits-reverse-engineering/web/helpers/dossier/citywide_zoning.py` — zoning_geojson

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
