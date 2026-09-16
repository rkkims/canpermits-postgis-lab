CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE address_point(slug text PRIMARY KEY,lng double precision,lat double precision);
CREATE TABLE parcel_boundaries(id bigint PRIMARY KEY,parcel_id text,geom geometry(MultiPolygon,4326));
CREATE TABLE premise_parcel(slug text,parcel_id text,match_status text);
