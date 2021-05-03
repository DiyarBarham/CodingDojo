USE world;
/***************************************************************
********************************1*******************************
***************************************************************/
/*SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON languages.country_id = countries.id
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;*/

/***************************************************************
********************************2*******************************
***************************************************************/
/*SELECT countries.name, count(cities.name) AS cities FROM countries
JOIN cities ON cities.country_id = countries.id
GROUP BY countries.name
ORDER BY cities DESC;*/
/***************************************************************
********************************3*******************************
***************************************************************/
/*SELECT cities.name AS cities, cities.population, cities.country_id FROM countries
JOIN cities ON cities.country_id = countries.id
WHERE cities.population >500000 AND countries.name='Mexico'
ORDER BY cities.population DESC*/
/***************************************************************
********************************4*******************************
***************************************************************/
/*SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON languages.country_id = countries.id
WHERE languages.percentage > 0.89
ORDER BY languages.percentage DESC;*/
/***************************************************************
********************************5*******************************
***************************************************************/
/*SELECT countries.name, countries.surface_area, cities.population FROM countries
JOIN cities ON cities.country_id = countries.id
WHERE countries.surface_area<501 AND cities.population>100000;*/
/***************************************************************
********************************6*******************************
***************************************************************/
/*SELECT countries.name, countries.government_form, countries.capital, countries.life_expectancy
FROM countries
WHERE countries.government_form='Constitutional Monarchy' AND countries.capital>200 AND countries.life_expectancy>75;*/
/***************************************************************
********************************7*******************************
***************************************************************/
/*SELECT countries.name, cities.name, cities.population, cities.district FROM countries
JOIN cities ON cities.country_id = countries.id
WHERE countries.name = 'Argentina' AND cities.district='Buenos Aires' AND cities.population>500000;*/
/***************************************************************
********************************8*******************************
***************************************************************/
SELECT count(countries.name), countries.region FROM countries
GROUP BY countries.region
ORDER BY count(countries.name) DESC;