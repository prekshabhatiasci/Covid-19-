# Covid-19-
Analyzed a large-scale global COVID-19 dataset containing over 300,000 records across 250+ countries from 2020 to 2022. Performed data cleaning, aggregation, and trend analysis
Utilized SQL queries to extract insights on total cases, deaths, growth trends, and country-wise comparisons. Delivered meaningful insights through structured queries, enabling
better understanding of pandemic impact and trends over time. We have two tables for the analysis of covid data.
 1) Covid Death Data
Column-wise Explanation

1. location
Represents the country or region where the data is recorded (e.g., India, USA, Brazil).
2. continent
Shows the continent of the location (e.g., Asia, Europe). Some entries may be NULL for aggregated regions.
3. date
The specific date for which the data is reported.
4. population
Total population of the country/region. Useful for calculating per capita metrics.

COVID Case-Related Columns
5. total_cases
Cumulative number of confirmed COVID-19 cases up to that date.
6. new_cases
Number of new cases reported on that particular day.
7. new_cases_smoothed
7-day moving average of new cases to smooth out daily fluctuations.

Death-Related Columns
8. total_deaths
Total number of deaths due to COVID-19 up to that date.
9. new_deaths
Number of new deaths reported on that day.
10. new_deaths_smoothed
7-day moving average of new deaths.

Rate-Based Metrics
11. total_cases_per_million
Total cases per 1 million population (for fair comparison between countries).
12. new_cases_per_million
New daily cases per million people.
13. total_deaths_per_million
Total deaths per million population.
14. new_deaths_per_million
Daily deaths per million people.

🏥 Additional (if present in your dataset)
15. icu_patients
Number of COVID patients in ICU.
16. hosp_patients
Number of hospitalized COVID patients.
17. reproduction_rate
Average number of people one infected person spreads the virus to.

2) Covid Vaccinated Data
Column-wise Explanation
1. location
Country or region name where vaccination data is recorded.
2. continent
Continent of the country (e.g., Asia, Europe). May contain NULL for aggregated regions.
3. date
The date on which the vaccination data is reported.

💉 Vaccination Counts
4. total_vaccinations
Total number of vaccine doses administered (includes first + second doses).
5. new_vaccinations
Number of vaccine doses administered on that specific day.
6. new_vaccinations_smoothed
7-day moving average of daily vaccinations to remove fluctuations.

👥 People Vaccinated Data
7. people_vaccinated
Number of people who received at least one dose.
8. people_fully_vaccinated
Number of people who received all required doses.
9. total_boosters
Total number of booster doses administered.

📊 Per Capita Metrics (Important for Analysis)
10. total_vaccinations_per_hundred
Total vaccinations per 100 people (helps compare countries).
11. people_vaccinated_per_hundred
Percentage of population with at least one dose.
12. people_fully_vaccinated_per_hundred
Percentage of fully vaccinated population.
13. total_boosters_per_hundred
Booster doses per 100 people.

🧪 Daily Rate Metrics
14. daily_vaccinations
Average number of vaccinations per day.
15. daily_vaccinations_smoothed
7-day average of daily vaccinations.
16. daily_vaccinations_per_million
Daily vaccinations per 1 million people.

🧬 Vaccine Information
17. vaccines
Types of vaccines used in that country (e.g., Covishield, Pfizer).
18. source_name
Source providing the data (e.g., government health departments).
19. source_website
Website link of the data source.

Insights we calculated:
-- a. Datewise likelihood of dying due to covid-totalcases vs total-death in india
-- b. Total % of deaths out of entire population in india
-- c. Country with highest death as a % of population
-- d. Total % of covid positive cases in india
-- e. Total % of covid positive cases in world
-- f. Continent wise positive cases
-- g. Continent wise deaths
-- h. daily new cases, hospitalization and icu patients in india   (on the basis of date)
-- i. Countrywise age 65> 
-- j. Countrywise total vaccinated person
