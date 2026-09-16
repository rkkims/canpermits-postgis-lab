CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE permits(id bigint PRIMARY KEY,geom geometry(Point,4326),deleted_at timestamptz);
CREATE TABLE premises(id bigint PRIMARY KEY,geom geometry(Point,4326));
