CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE parcels(id bigint PRIMARY KEY,geom geometry(MultiPolygon,4326));
CREATE TABLE constraints(id bigint PRIMARY KEY,kind text,geom geometry(MultiPolygon,4326));
CREATE TABLE constraint_parts(source_id bigint,geom geometry(Polygon,4326));
