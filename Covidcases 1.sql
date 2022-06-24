/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM [portfolio project].[dbo].[CovidDeaths]

-- sort by location, date, total_cases, new_cases, total_deaths

select location, date, total_cases, new_cases, total_deaths, population
from [portfolio project].[dbo].[CovidDeaths]
order by 1, 2

-- calculating death percentage in kenya
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as death_percentage
from [portfolio project].[dbo].[CovidDeaths]
where location like '%kenya%'
order by 1, 2

--looking at total case vs popuation in kenya
select location, date, population, total_cases, (total_cases/population)*100 as poplation_percentage
from [portfolio project].[dbo].[CovidDeaths]
where location like '%kenya%'
order by 1, 2

--looking at countries with highest infefction rates vs population
select location, population, max(total_cases) as highestinfectioncount, max((total_cases/population))*100 as poplation_percentageinfected
from [portfolio project].[dbo].[CovidDeaths]
-- where location like '%kenya%'
group by location, population
order by poplation_percentageinfected desc

-- countries with highest death count per poppulation
select location, max(total_cases) as total_deathcount
from [portfolio project].[dbo].[CovidDeaths]
-- where location like '%kenya%'
group by location
order by total_deathcount asc



