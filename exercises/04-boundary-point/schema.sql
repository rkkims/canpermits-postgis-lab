CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE areas(id text PRIMARY KEY, geom geometry(Polygon,4326));
CREATE TABLE locations(id text PRIMARY KEY, geom geometry(Point,4326));
