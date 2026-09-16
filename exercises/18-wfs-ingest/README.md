# Exercise 18 — Design a repeatable, bounded WFS ingest

**Level:** Performance and engineering decisions  
**Prerequisites:** 02, 03, 05, 08  
**PostgreSQL first:** transactions, batch loading  
**Portfolio candidate:** Optional

## Real CanPermits context

A provincial WFS client requests bbox-clipped, paginated GIS features.

## Learning objective

Connect source-side filtering to completeness and repeatability.

## Problem

Design a small importer that pages within a target bbox and detects missing or duplicate features on rerun.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

Runs are auditable for coverage and completeness, with a defined rerun effect.

## Edge cases to test

Axis order; CRS mismatch; failed page; source changes mid-run; crossing feature.

## Concepts to research

WFS bbox and CRS, ST_Extent, ST_Transform, unique keys, transactions.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/scrapers/bcgw_wfs.py` — fetch_bcgw,count_bcgw
- `../../../canpermits-reverse-engineering/etl/toronto_constraints.py` — load_shp_layer
- `../../../canpermits-reverse-engineering/etl/ingest_economic_source_layers.py` — load_layer

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
