select * from migrations join sea_lions on migrations.id = sea_lions.id;
select * from migrations left join sea_lions on migrations.id = sea_lions.id;
select * from migrations right join sea_lions on migrations.id = sea_lions.id;

select * from books;

select * from publishers;
--subquiries command

select title from books where id in(
select book_id from translated where translator_id = (
select id from translators where name = 'sophie hughes'
)
);


select * from migrations join sea_lions on migrations.id = sea_lions.id;

select title from books where publisher_id = 33;
