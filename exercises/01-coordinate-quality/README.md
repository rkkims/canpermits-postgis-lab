# Exercise 01 — Admit or quarantine a permit coordinate

**Level:** Foundations  
**Prerequisites:** None  
**PostgreSQL first:** types, NULL, CHECK  
**Portfolio candidate:** Optional

## Real CanPermits context

CanPermits stores permit locations from two routes: coordinates supplied by a municipal feed and points returned by a geocoder. Both reach the same `permits.geom` column, so a plausible-looking number pair can corrupt map bounds, neighbourhood assignment, and nearby searches if its order or location is wrong. A past source-coordinate incident prompted a shared location sanity check before rows enter the main table.

## Learning objective

Understand coordinate order, point SRID, NULL, and geographic quality checks.

## Problem

Design a load check that accepts plausible coordinates and records why others cannot be trusted. Preserve source values.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

A is usable; B and C need review; D remains without a point.

## Edge cases to test

Swapped coordinates; zero; one missing ordinate; plausible point in wrong city.

## Concepts to research

ST_MakePoint, ST_SetSRID, ST_X, ST_Y, CHECK constraints.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/geocode.py` — coords_in_canada,validate_geom_wkt
- `../../../canpermits-reverse-engineering/etl/load.py` — _to_row
- `../../../canpermits-reverse-engineering/scripts/fix_bogus_geoms_2026-04-29.py` — find_bogus

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
