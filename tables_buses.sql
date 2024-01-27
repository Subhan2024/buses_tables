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

create table cards(
id integer primary key
);

create table swipes(
id integer ,
card_id integer,
station_id integer,
type varchar(200)not null check(type in('enter','exits' , 'deposit')),
amount float not null check(amount !=0),
datetime datetime not null,
primary key(id),
foreign key(card_id) references cards(id),
foreign key(station_id) references stations(id)
);
select * from cards;
alter table cards add card_name varchar(200) not null;

alter table cards drop column card_name;

alter table swipes drop constraint FK__swipes__card_id;

alter table swipes add constraint FK__swipes__card_id__4D94879B foreign key(card_id) references cards(id);

alter table cards alter column card_name text not null;

select * into rider2 from riders;

ALTER TABLE books RENAME COLUMN isbn to id_no;


select * from reader;

sp_columns reader;
sp_rename 'rider2','reader';
sp_rename 'reader.name' , 'reader_name' , 'column';

create table collections(
id integer primary key identity(1,2),
title varchar(200)not null,
accession_number float not null unique,
acquired date
);
drop table collections;
select * from collections;



insert into collections(title , accession_number , acquired) values  ('profusion of flowers' , 56.257 , '1956-04-12'),
('Farmers Working at Dawn' , 11.6152 , '1911-08-03'),
('Spring Outig' , 14.76 , '1914-01-08'),
('imaginative landscape' , 56.496 , NULL),
('peonies and butterfly' , 06.1899 , '1906-01-01'),
('Tile unitte' , 06.2437 , '1906-11-08'),
('Statutee of a shrew' , 01.105 , '1901-02-11');

delete from collections where acquired <= '1907-01-01';

