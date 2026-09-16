# Exercise 11 — Resolve overlapping or shared-boundary matches

**Level:** Correctness and edge cases  
**Prerequisites:** 06 or 07  
**PostgreSQL first:** join cardinality, windows  
**Portfolio candidate:** Optional

## Real CanPermits context

Area layers can overlap or meet at edges, yielding zero or several spatial matches.

## Learning objective

Treat match cardinality as a data-quality concern.

## Problem

Classify each point as unique, unmatched, or ambiguous and state a policy for each.

## Minimal input schema and sample data

Run `schema.sql`, then `fixtures.sql` in a new scratch database. These files contain only tables and synthetic inputs. Use `attempt.sql` for your work.

## Expected behavior

No point gets an arbitrary area due to row order.

## Edge cases to test

Equal priorities; duplicate areas; hole; NULL or empty.

## Concepts to research

ST_Within, ST_Covers, join cardinality, deterministic ordering.

## Relevant source files — inspect after attempting

- `../../../canpermits-reverse-engineering/etl/load.py` — _assign_neighbourhoods
- `../../../canpermits-reverse-engineering/etl/victoria_parcels.py` — resolve_premises

## Portfolio value

Useful supporting exercise; promote it if your solution produces a clear engineering decision or measurable result.
