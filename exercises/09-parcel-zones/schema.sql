CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE parcels(parcel_id text PRIMARY KEY,geom geometry(MultiPolygon,4326));
CREATE TABLE zones(zone_id text PRIMARY KEY,designation text,geom geometry(MultiPolygon,4326));
