

create procedure sp_movies @num varchar(200)
as 
begin
select title , rating , votes , year from movies
join
ratings on
movies.id = ratings.id where title = @num
end;

sp_movies  'Dama de noche';

declare @num integer;
set @num = 1;

while @num <= 10
begin
print @num;
set @num = @num + 1
END;

declare @userinput varchar(200) = 'bkjsagfkbds or 1 = 1';
declare @userid integer = 1;

select * from accounts where id = @userid and name = @userinput ;

declare @userin	varchar(200) = '1
union 
select * from accounts;'

select * from accounts where id = 1;

