# Exercise 05 — Import an authoritative municipality boundary

**Level:** Real CanPermits operations  
**Prerequisites:** 03  
**PostgreSQL first:** transactions, upsert  
**Portfolio candidate:** Yes

## Real CanPermits context

The map uses Statistics Canada city outlines separate from permit-derived map rectangles.

## Learning objective

Build an auditable reference-data import with identity and version checks.

## Problem

Accept a feature only when city name and province identify one boundary; retain source identity and refresh metadata.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Exactly the intended boundary is stored; ambiguous or missing matches are reported.

## Edge cases to test

Revised geometry; duplicate match; invalid ring; CRS mismatch.

## Concepts to research

ST_IsValid, ST_Equals, MultiPolygon, provenance.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/pipeline_municipality_boundaries.py` — _fetch_csd,run
- `../../../canpermits-reverse-engineering/db/migrations/292_municipality_boundary.sql`

## Portfolio value

Strong case-study candidate for the source → validation → storage → reasoning → correctness → performance narrative.
