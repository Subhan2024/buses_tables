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