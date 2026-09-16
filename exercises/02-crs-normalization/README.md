# Exercise 02 — Establish a common CRS

**Level:** Foundations  
**Prerequisites:** 01  
**PostgreSQL first:** constraints  
**Portfolio candidate:** Optional

## Real CanPermits context

CanPermits combines GIS layers published through shapefiles, WFS, and ArcGIS services. A source may return projected coordinates while the core permit and boundary tables store EPSG:4326 geometry; comparing those numbers without CRS handling makes spatial matches meaningless. The Toronto constraint loader checks staging-layer SRIDs, and the BC WFS client requests a declared output CRS, making this a real ingestion boundary rather than an isolated projection exercise.

## Learning objective

Distinguish assigning an SRID from transforming coordinates.

## Problem

Determine whether a documented projected point and a 4326 reference describe the same location. Give unknown-CRS input an explicit outcome.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

The known-CRS row is comparable; the unknown one is not guessed.

## Edge cases to test

SRID 0; falsely labelled CRS; already-4326 point; failed transformation.

## Concepts to research

ST_SRID, ST_SetSRID, ST_Transform.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/toronto_constraints.py` — load_shp_layer
- `../../../canpermits-reverse-engineering/scrapers/bcgw_wfs.py` — fetch_bcgw

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
