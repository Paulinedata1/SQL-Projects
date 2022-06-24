-- I did this project to practice on 'JOINS' 'DML' and 'count Functions'.
-- JOINING THE TITLE TABLE AND THE DIRECTORS TABLE
SELECT *
FROM [PROJECT NETFLIX]..[netflix_titles]
LEFT JOIN [PROJECT NETFLIX]..[netflix-directors]
ON netflix_titles.show_id= [netflix-directors].show_id

-- JOINING THE TITLE TABLE AND THE country TABLE
select *
from [PROJECT NETFLIX]..[netflix_titles]
left join [PROJECT NETFLIX]..[country_duration]
on netflix_titles.show_id= country_duration.show_id 

-- drop the listed_in column 
alter table [PROJECT NETFLIX]..[netflix_titles]
drop column listed_in

-- no. of movies
select count (title)
from [PROJECT NETFLIX]..[netflix_titles]
where type= 'Movie'

--no. of tv shows
select count (title)
from [PROJECT NETFLIX]..[netflix_titles]
where type= 'TV Show'

--country_duration
select *
from [PROJECT NETFLIX]..[country_duration]

--count of shows in kenya
select count(*)
from [PROJECT NETFLIX]..[country_duration]
where country= 'Kenya'

select count(*)
from  [PROJECT NETFLIX]..[country_duration]
where country= 'United States'

select count(*)
from  [PROJECT NETFLIX]..[country_duration]
where country IS NULL

