INSERT INTO parcels VALUES (1,ST_Multi(ST_GeomFromText('POLYGON((0 0,1 0,1 1,0 1,0 0))',4326))),(2,ST_Multi(ST_GeomFromText('POLYGON((1 0,2 0,2 1,1 1,1 0))',4326)));
INSERT INTO constraints VALUES (1,'hazard',ST_Multi(ST_GeomFromText('POLYGON((0 0,2 0,2 2,0 2,0 0))',4326)));
-- Add vertices and parcels yourself for a meaningful performance comparison.
