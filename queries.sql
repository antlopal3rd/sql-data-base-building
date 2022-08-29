-- How many actors in the database?

select count(full_name)
from actors;

-- table of actors with the films they have made
select actors.full_name, films.title
from actors

left join old_films
on actors.full_name=old_films.full_name

left join films
on old_films.title=films.title;

-- Top 10 actors that appear in the most films in this database

select actors.full_name, count(films.title)
from actors

left join old_films
on actors.full_name=old_films.full_name

left join films
on old_films.title=films.title

group by actors.full_name

order by count(films.title) DESC

limit 10;

-- actors in the database with no film record

select *
from
(select actors.full_name, count(films.title) as times
from actors

left join old_films
on actors.full_name=old_films.full_name

left join films
on old_films.title=films.title

group by actors.full_name

order by count(films.title) DESC) as tabla
where tabla.times=0;

-- Top 10 shortest films

select *
from
(select actors.full_name, films.title, films.length
from actors

left join old_films
on actors.full_name=old_films.full_name

left join films
on old_films.title=films.title) as tabla

where tabla.length is not null

order by tabla.length ASC

limit 10;

-- Top films with the most special features included

select *
from
(select title, special_features, (length(special_features) - length(REPLACE(special_features, ',',''))) / length(',') as ocurrences
from films) as tabla

where tabla.ocurrences = 3;




