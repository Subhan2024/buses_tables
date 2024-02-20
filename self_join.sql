create database art;

create table collections(
id integer primary key identity(1,2),
title varchar(200)not null,
accession_number float not null unique,
acquired date
);
select * from collections;

insert into collections(title , accession_number , acquired) values  ('profusion of flowers' , 56.257 , '1956-04-12'),
('Farmers Working at Dawn' , 11.6152 , '1911-08-03'),
('Spring Outig' , 14.76 , '1914-01-08'),
('imaginative landscape' , 56.496 , NULL),
('peonies and butterfly' , 06.1899 , '1906-01-01'),
('Tile unitte' , 06.2437 , '1906-11-08'),
('Statutee of a shrew' , 01.105 , '1901-02-11');

create table admin(
id int primary key identity(1,1),
names varchar(200) not null , 
job varchar(100) not null , 
supervisor int 
);

select * from admin;
insert into admin (names , job , supervisor)values ('Ali' , 'Peon' , 4),
 ('zakir' , 'admin' , 2),
  ('rehman' , 'accountant' , 4),
   ('amjad' , 'manager' , 5),
    ('asim' , 'hr' , 5);

select admin.names , admin.job , admins.names from admin join admin as admins on admin.id = admins.supervisor;