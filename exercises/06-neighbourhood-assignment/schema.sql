CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE permits(id bigint PRIMARY KEY, municipality_id int, geom geometry(Point,4326), neighbourhood_id bigint);
CREATE TABLE neighbourhoods(id bigint PRIMARY KEY, municipality_id int, boundary geometry(MultiPolygon,4326));
