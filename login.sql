create trigger tr_deleted 
on current_collection
instead of delete
as begin
update collections set deleted = 1
where id = (select id from deleted);
end;

create view current_collection as
select * from collections where deleted = 0;

delete from current_collection where title = 'spring outing';

insert into collections(title , accession_number , acquired)
values('spring outing' , 86.325 , '1986-10-01');

select * from current_collection;
select * from collections;

alter table collections
add deleted integer default (0) not null check(deleted in(0,1));


create login subhan with password = 'sk0251198';

create user subhan for login subhan;

select * from sys.sql_logins;

select * from rides_destination;

grant select on dbo.rides_destination to subhan;