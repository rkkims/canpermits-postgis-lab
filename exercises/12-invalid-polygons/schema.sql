CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE incoming_areas(source_id text PRIMARY KEY,source_geom geometry);
CREATE TABLE accepted_areas(source_id text PRIMARY KEY,geom geometry(MultiPolygon,4326),repair_status text);
