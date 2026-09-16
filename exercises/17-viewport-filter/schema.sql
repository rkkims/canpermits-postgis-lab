CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE zoning_areas(id bigint PRIMARY KEY,geom geometry(MultiPolygon,4326),zone_code text);
CREATE INDEX zoning_geom_idx ON zoning_areas USING GIST(geom);
