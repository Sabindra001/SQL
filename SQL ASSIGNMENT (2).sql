Use World;

## 1) Using count, get the number of cities in the USA​
select count(id) as number_of_cities
from city
where CountryCode = "USA";

## 2) Find out what the population and average life expectancy for people in Argentina (ARG) is.​

select Population, LifeExpectancy from country
where Code = "ARG";

## 3) Using ORDER BY, LIMIT, what country has the highest life expectancy?​
Select Name from country
ORDER BY LifeExpectancy desc limit 1;

## 4) Select 25 cities around the world that start with the letter 'F' in a single SQL query.​
select Name from city
where Name like "F%" limit 25;

## 5) Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​
select ID, Name, Population from city 
order by ID asc limit 10;

## 6) Create a SQL statement to find only those cities from city table whose population is larger than 2000000.​
SELECT * FROM world.city 
WHERE population > 2000000;

## 7) create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
SELECT Name FROM world.city
WHERE Name LIKE 'Be%';

## 8) Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT * FROM world.city
WHERE population BETWEEN 500000 AND 1000000;

## 9) Create a SQL statement to find a city with the lowest population in the city table.​
SELECT * FROM world.city
ORDER BY population ASC
LIMIT 1;

## 10) Create a SQL statement to find the capital of Spain (ESP).
USE world;
SELECT city.name
FROM city
JOIN country ON city.id = country.capital
WHERE country.code = 'ESP';

## 11) Create a SQL statement to list all the languages spoken in the Caribbean region.​
SELECT city.name
FROM city
JOIN country ON city.country_code = country.code
WHERE country.continent = 'Europe';



## 12) Create a SQL statement to find all cities from the Europe continent.​
SELECT city.name
FROM world.city
JOIN world.country ON city.CountryCode = country.Code
WHERE country.Continent = 'Europe';

​









