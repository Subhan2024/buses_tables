create table riders(
id int primary key,
name varchar(200)not null
);

create table stations(
id int,
location varchar(200)not null unique,
line text not null,
primary key(id)
);

create table visits(
rider_id integer,
staion_id integer,
foreign key(rider_id) references riders(id),
foreign key(staion_id) references stations(id)
);
