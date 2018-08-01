CREATE TABLE locationsetmembers
( 
locationsetid int not null,
locationid int not null,
primary key (locationsetid, locationid)
)
;

insert into locationsetmembers
(locationsetid, locationid)
select 1, locationid
from climark_grids

select locationsetid, count(*)
from locationsetmembers
group by locationsetid