# Exercise 10 — Find nearby development activity

**Level:** Real CanPermits operations  
**Prerequisites:** 01, 02, 04  
**PostgreSQL first:** joins, grouping, ordering  
**Portfolio candidate:** Optional

## Real CanPermits context

Address dossiers show nearby permits and applications in metres.

## Learning objective

Choose distance semantics and distinguish sites from records.

## Problem

Count distinct nearby sites, list nearest few within a radius, and state an own-site exclusion rule.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Counts and ordering use metres and handle repeated records at one site.

## Edge cases to test

Coincident different IDs; exactly at radius; NULL; distance tie.

## Concepts to research

Geometry versus geography, ST_DWithin, ST_Distance, grouping.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/toronto_development_proximity.py` — _build_site_temp,resolve_development_proximity
- `../../../canpermits-reverse-engineering/web/helpers/dossier/nearby_dev_generic.py` — nearby_development_map_generic

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
