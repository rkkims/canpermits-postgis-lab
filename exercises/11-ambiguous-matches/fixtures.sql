INSERT INTO areas VALUES ('A',1,ST_Multi(ST_GeomFromText('POLYGON((0 0,3 0,3 3,0 3,0 0))',4326))),('B',1,ST_Multi(ST_GeomFromText('POLYGON((2 0,5 0,5 3,2 3,2 0))',4326)));
INSERT INTO points VALUES ('overlap',ST_GeomFromText('POINT(2.5 1)',4326)),('outside',ST_GeomFromText('POINT(6 1)',4326)),('edge',ST_GeomFromText('POINT(2 1)',4326));
