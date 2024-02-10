use art;
SELECT * FROM authors;
SELECT * FROM authored;
SELECT * FROM books;

CREATE VIEW book_info AS
SELECT name, title, year FROM authors
JOIN
authored
ON authored.author_id = authors.id
JOIN
books ON authored.book_id = books.id


SELECT * FROM book_info WHERE year = 2022;


SELECT * FROM ratings;
CREATE VIEW avg_rating_table AS
SELECT CAST(REPLACE(book_id,'"','') AS INT) AS 
book_id, 
title, 
year, 
AVG(rating) as avg_rating
FROM ratings
JOIN
books ON CAST(REPLACE(book_id,'"','') AS INT) = books.id
GROUP BY book_id, title, year;


SELECT * FROM avg_rating_table ORDER BY book_id;


--CTE-Commands: Full form Of(Common Table Expression)

select * from ratings;

with books_name_year as(
select title , AVG(rating)as average_ratings from books
join ratings on  books.id = cast(replace(ratings.book_id , '"' , '')as int)
group by title
)
select * from books_name_year;


select title , count(rating)as average_ratings from books
join ratings on books.id = cast(REPLACE(ratings.book_id , '"' , '')as int)
group by title;

create table rides(
id integer primary key identity(1,1),
origin varchar(200) not null,
destination varchar(200)not null,
riders varchar(200)not null
);

select * from rides;

insert into rides(origin , destination , riders)values('Good Egg Galaxy' , 'Honeyhive Galaxy' , 'Peach'),
('Good Egg Galaxy' , 'Honeyhive Galaxy' , 'Peach'),
('Castile courtyard' , 'Cascada Kingdom' , 'Maria'),
('Metro kingdom' , 'Mushroom Kingdom' , 'Luigi'),
('Seaside Kingdom' , 'Deep Woods' , 'Bowser');

create view rides_destination as
select origin , destination from rides;

select * from rides_destination;

select * from collections;



