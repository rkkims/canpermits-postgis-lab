INSERT INTO municipality_map_bounds VALUES ('city',0,0,4,4);
INSERT INTO municipality_boundary VALUES ('city',ST_Multi(ST_GeomFromText('POLYGON((0 0,4 0,4 1,1 1,1 4,0 4,0 0))',4326)));
INSERT INTO locations VALUES ('inside',ST_GeomFromText('POINT(0.5 0.5)',4326)),('rectangle_only',ST_GeomFromText('POINT(3 3)',4326)),('outside',ST_GeomFromText('POINT(5 3)',4326));
