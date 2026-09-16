INSERT INTO neighbourhoods VALUES (1,7,ST_Multi(ST_GeomFromText('POLYGON((0 0,2 0,2 2,0 2,0 0))',4326))),(2,7,ST_Multi(ST_GeomFromText('POLYGON((2 0,4 0,4 2,2 2,2 0))',4326)));
INSERT INTO permits(id,municipality_id,geom) VALUES (1,7,ST_GeomFromText('POINT(1 1)',4326)),(2,7,ST_GeomFromText('POINT(3 1)',4326)),(3,7,ST_GeomFromText('POINT(2 1)',4326)),(4,7,NULL);
