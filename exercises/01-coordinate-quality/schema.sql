CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE incoming_permits(source_id text PRIMARY KEY, lon double precision, lat double precision);
CREATE TABLE permits(source_id text PRIMARY KEY, geom geometry(Point,4326), location_status text);
