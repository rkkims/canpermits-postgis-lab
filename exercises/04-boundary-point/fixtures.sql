INSERT INTO areas VALUES ('A',ST_GeomFromText('POLYGON((0 0,2 0,2 2,0 2,0 0))',4326));
INSERT INTO locations VALUES ('inside',ST_GeomFromText('POINT(1 1)',4326)),('outside',ST_GeomFromText('POINT(3 1)',4326)),('edge',ST_GeomFromText('POINT(2 1)',4326));
