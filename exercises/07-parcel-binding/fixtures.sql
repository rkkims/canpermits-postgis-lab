INSERT INTO parcel_boundaries VALUES (1,'P1',ST_Multi(ST_GeomFromText('POLYGON((0 0,2 0,2 2,0 2,0 0))',4326))),(2,'P2',ST_Multi(ST_GeomFromText('POLYGON((2 0,4 0,4 2,2 2,2 0))',4326)));
INSERT INTO address_point VALUES ('interior',1,1),('edge',2,1),('gap',5,1);
