create table public.globalgrids
(
	ogc_fid integer not null,
	locationid bigint,
	latitude double precision,
	longitude double precision,
	elevation bigint,
	wkb_geometry geometry(Polygon,4326),
    constraint globalgrids_pkey primary key(locationid)
);
--------------
CREATE INDEX globalgrids_wkb_geometry_geom_idx ON public.globalgrids (wkb_geometry);
------------
insert into public.globalgrids
select * from public.climark_grids;
