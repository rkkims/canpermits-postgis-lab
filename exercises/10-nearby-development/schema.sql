CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE premises(slug text PRIMARY KEY,geom geometry(Point,4326));
CREATE TABLE development_records(id bigint PRIMARY KEY,site_id text,geom geometry(Point,4326),event_date date);
