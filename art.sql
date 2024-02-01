create database art;
use art;

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

delete from collections where acquired <= '1907-01-01';

create table artist(
id integer primary key identity(1,1),
name varchar(200)
);

create table created(
artist_id integer,
collection_id integer,
foreign key(artist_id) references artist(id) on delete cascade,
foreign key(collection_id) references collections(id)  on delete cascade
);
select * from artist;
insert into artist(name) values ('Li Yin'),
('qian weicheng'),
('undefined artist'),
('zhou chen');
select * from collections;
insert into created(artist_id , collection_id) values
(1,1),
(2,3),
(4,5),
(6,7);
drop table created;

select * from created;
select * from artist;
select * from collections;

delete from artist where name = 'undefined artist';


update created set artist_id =(select id from artist where name = 'zhou chen')
where collection_id = (select id from collections where title = 'profusion of flowers');


create table transactions(
id integer primary key identity(1,1),
title varchar(200),
action varchar(200)
);

create trigger sell
on collections
after delete 
as
begin
	insert into transactions(title , action)
	select title, 'sold'
	from deleted;
 end;

 select * from transactions;
 select * from collections;

 delete from collections where title = 'imaginative landscape';

 select * trigger.table