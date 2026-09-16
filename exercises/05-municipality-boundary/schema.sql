CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE boundary_feed(csduid text, csdname text, pruid text, geometry_json jsonb);
CREATE TABLE municipality_boundary(slug text PRIMARY KEY, csduid text, boundary geometry(MultiPolygon,4326), source text, refreshed_at timestamptz);
