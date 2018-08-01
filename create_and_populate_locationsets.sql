create TABLE locationsets (
  locationsetid serial not null, 
  locationsetname varchar(250) not null, 
  shapewkt varchar null, 
  primary key (locationsetid))
  
insert into locationsets
(locationsetname)
values ('Climark')

insert into locationsets
(locationsetname)
values ('Monsanto')

select * from locationsets
