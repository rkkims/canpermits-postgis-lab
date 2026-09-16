INSERT INTO zoning_areas VALUES (1,ST_Multi(ST_GeomFromText('POLYGON((0 0,1 0,1 1,0 1,0 0))',4326)),'R'),(2,ST_Multi(ST_GeomFromText('POLYGON((1 0,3 0,3 1,1 1,1 0))',4326)),'C'),(3,ST_Multi(ST_GeomFromText('POLYGON((5 5,6 5,6 6,5 6,5 5))',4326)),'I');
-- Try viewport west=0.5, south=0.2, east=1.5, north=0.8.
