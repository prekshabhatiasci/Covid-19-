-- Portfolio Project
-- a. Datewise likelihood of dying due to covid-totalcases vs total-death in india
select date,total_cases,total_deaths from "CovidDeaths" where location like '%India%'

-- b. Total % of deaths out of entire population in india
select max(total_deaths)/avg(cast(population as integer))*100 from "CovidDeaths" where location like '%India%'

-- c. Country with highest death as a % of population
select location,(max(total_deaths)/avg(cast(population as bigint))*100) as percentage from "CovidDeaths" group by location order by percentage desc;

-- d. Total % of covid positive cases in india
select (max(total_cases)/avg(cast(population as bigint))*100) as percentagepositive from "CovidDeaths" where location like '%India%'

-- e. Total % of covid positive cases in world
select location,(max(total_cases)/avg(cast(population as bigint))*100) as percentagepositive from "CovidDeaths" group by location order by percentagepositive desc;

-- f. Continent wise positive cases
select location,max(total_cases) as total_case from "CovidDeaths" where continent is null group by location order by total_case desc; 

-- g. Continent wise deaths
select location,max(total_deaths) as total_death from "CovidDeaths" where continent is null group by location order by total_death desc; 

-- h. daily new cases, hospitalization and icu patients in india   (on the basis of date)
select date,new_cases,hosp_patients,icu_patients from "CovidDeaths" where location like '%India%'

-- i. Countrywise age 65> (we'll use join to solve this query)  (on is used to compare/ create condition a common column between two tables that is iso_code and date of one table should be same as that of another table)
select "CovidDeaths".location, "CovidVaccinations".aged_65_older from "CovidDeaths" join "CovidVaccinations" on "CovidDeaths".iso_code="CovidVaccinations".iso_code and "CovidDeaths".date="CovidVaccinations".date 

-- j. Countrywise total vaccinated person
select "CovidDeaths".location as country,(max("CovidVaccinations".people_fully_vaccinated)) as fully_vaccinated from "CovidDeaths" join "CovidVaccinations" on "CovidDeaths".iso_code="CovidVaccinations".iso_code and "CovidDeaths".date="CovidVaccinations".date where "CovidDeaths".continent is not null group by country order by fully_vaccinated desc;  
