INSERT INTO parcels VALUES ('P1',ST_Multi(ST_GeomFromText('POLYGON((0 0,10 0,10 10,0 10,0 0))',4326)));
INSERT INTO zones VALUES ('A','R',ST_Multi(ST_GeomFromText('POLYGON((0 0,7 0,7 10,0 10,0 0))',4326))),('B','C',ST_Multi(ST_GeomFromText('POLYGON((7 0,10 0,10 10,7 10,7 0))',4326))),('C','I',ST_Multi(ST_GeomFromText('POLYGON((10 0,12 0,12 10,10 10,10 0))',4326)));
