CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE source_features(source_id text PRIMARY KEY,geom geometry(Geometry,4326),payload jsonb);
CREATE TABLE ingest_runs(run_id bigint PRIMARY KEY,source_name text,requested_bbox geometry(Polygon,4326),fetched_count int,completed_at timestamptz);
CREATE TABLE incoming_pages(page_no int,source_id text,geometry_json jsonb,payload jsonb);
