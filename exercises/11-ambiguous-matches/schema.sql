CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE points(id text PRIMARY KEY,geom geometry(Point,4326));
CREATE TABLE areas(id text PRIMARY KEY,priority int,geom geometry(MultiPolygon,4326));
CREATE TABLE assignments(point_id text,area_id text,status text);
