CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE incoming_features(source_id text, geometry_json jsonb);
CREATE TABLE areas(source_id text PRIMARY KEY, geom geometry(MultiPolygon,4326));
