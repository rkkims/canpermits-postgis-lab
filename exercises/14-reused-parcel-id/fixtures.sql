INSERT INTO parcel_boundaries VALUES (1,'COMPLEX',ST_Multi(ST_GeomFromText('POLYGON((0 0,1 0,1 1,0 1,0 0))',4326))),(2,'COMPLEX',ST_Multi(ST_GeomFromText('POLYGON((10 0,11 0,11 1,10 1,10 0))',4326))),(3,'P-1',ST_Multi(ST_GeomFromText('POLYGON((3 0,4 0,4 1,3 1,3 0))',4326)));
INSERT INTO premises VALUES ('a',ST_GeomFromText('POINT(0.5 0.5)',4326)),('b',ST_GeomFromText('POINT(10.5 0.5)',4326));
INSERT INTO zones VALUES ('R',ST_Multi(ST_GeomFromText('POLYGON((0 0,1 0,1 1,0 1,0 0))',4326))),('C',ST_Multi(ST_GeomFromText('POLYGON((10 0,11 0,11 1,10 1,10 0))',4326)));
