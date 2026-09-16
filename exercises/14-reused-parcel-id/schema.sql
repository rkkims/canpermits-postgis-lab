CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE parcel_boundaries(feature_id bigint PRIMARY KEY,parcel_id text,geom geometry(MultiPolygon,4326));
CREATE TABLE premises(slug text PRIMARY KEY,geom geometry(Point,4326));
CREATE TABLE zones(id text PRIMARY KEY,geom geometry(MultiPolygon,4326));
