CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE zoning_feed(source_id text,zone_code text,geometry_json jsonb,raw_payload jsonb);
CREATE TABLE zoning_areas(source_id text PRIMARY KEY,zone_code text,geom geometry(MultiPolygon,4326),raw_payload jsonb,as_of_date date);
