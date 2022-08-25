--infection rate in the UK
SELECT location, date, population, total_cases, (total_cases/population)*100 as infection_rate
FROM PortfolioProjects..CovidDeaths
WHERE location like '%Kingdom%'
order by 1,2
-- as at august 2022, 34.8% of UK's population has contacted covid

--death rate in the UK
SELECT location, date, population, total_cases, (total_deaths/population)*100 as death_rate
FROM PortfolioProjects..CovidDeaths
WHERE location like '%Kingdom%'
order by 1,2
-- as at august 2022, 0.27% of UK's population has died from covid 

--Vaccination rate in the UK
SELECT dea.location, dea.date,dea.population,dea.total_cases, vac.people_vaccinated, (vac.people_vaccinated/dea.population)*100 as Vaccination_rate
FROM PortfolioProjects..CovidVaccinations vac
JOIN PortfolioProjects..CovidDeaths dea
  on vac.location = dea.location and vac.date = dea.date
WHERE dea.location like '%Kingdom%'
order by 1,2
-- as at august 2022, 79.8 of UK's popuplation has been vaccinated


