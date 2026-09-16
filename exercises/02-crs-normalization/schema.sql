CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE source_points(id text PRIMARY KEY, source_srid int, geom geometry);
CREATE TABLE reference_points(id text PRIMARY KEY, geom geometry(Point,4326));
