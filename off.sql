create database cda;
use cda;
create table riders(
id integer,
name text,
primary key(id)
);

create table station(
id integer,
location varchar(200),
line varchar(200),
primary key(id)
);

