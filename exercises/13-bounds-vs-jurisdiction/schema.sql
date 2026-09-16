CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE municipality_map_bounds(slug text PRIMARY KEY,sw_lng float,sw_lat float,ne_lng float,ne_lat float);
CREATE TABLE municipality_boundary(slug text PRIMARY KEY,boundary geometry(MultiPolygon,4326));
CREATE TABLE locations(id text PRIMARY KEY,geom geometry(Point,4326));
