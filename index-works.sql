select * from movies where title = 'Toy';

create index movie_index
on movies(title);

sp_helpindex movies;

create index people_index
on people (name) 
where birth = 1998;

select * from people where birth = 1998;