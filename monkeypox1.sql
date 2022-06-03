select *
from monkeypox.dbo.monkeypox

-- countries with confirmed cases
select distinct(Country), status
from [monkeypox].[dbo].[Monkeypox]
where status = 'confirmed'

-- status count
select status, country, count(status) as status_cnt
from [monkeypox].[dbo].[Monkeypox]
-- where status= 'confirmed'
group by status, country

--male confirmed cases
select country, age, Gender
from [monkeypox].[dbo].[Monkeypox]
where gender ='male'
and status= 'confirmed'

-- grouping per location
select status, location, country
from [monkeypox].[dbo].[Monkeypox]
where status= 'confirmed'

-- count of cases that are not confirmed and gender is not null
select country, gender
from [monkeypox].[dbo].[Monkeypox]
where not status='confirmed' 
and gender is not null

--







