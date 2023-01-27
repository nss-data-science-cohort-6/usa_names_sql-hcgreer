-- 1
-- SELECT COUNT(*) AS total_rows
-- FROM names;
-- There are 1957046 rows

-- 2
-- SELECT SUM(num_registered) AS sum_registered
-- FROM names;
-- There are 351653025 people registered

-- 3
-- SELECT *
-- FROM names
-- ORDER BY num_registered DESC
-- LIMIT 1;
-- Linda was the most registered name.

-- 4
-- SELECT MIN(year) AS min_year, 
-- 	   MAX (year) AS max_year
-- FROM names;
-- The range of years is 1880 to 2018.

-- 5 
-- SELECT year, SUM(num_registered) AS total_registered
-- FROM names
-- GROUP BY year
-- ORDER by total_registered DESC
-- LIMIT 1;
-- 1957 had the most registers

-- 6
-- SELECT COUNT(DISTINCT name) AS distinct_names
-- FROM names;
-- There are 98400 distinct names.

-- 7
-- SELECT gender, sum(num_registered) as total_registered
-- FROM names
-- GROUP BY gender;
--There are more males than females

-- 8
-- SELECT name, gender, sum(num_registered) as total_registered
-- FROM names
-- GROUP BY name, gender
-- ORDER BY total_registered DESC;
-- The most popular male name is James
-- The most popular female name is Mary

-- 9
-- SELECT name, gender, SUM(num_registered) as total_registered
-- FROM names
-- WHERE year BETWEEN 2000 AND 2009
-- GROUP BY name, gender
-- ORDER BY total_registered DESC;
-- The most popular male name was Jacob
-- The most popular female name was Emily

-- 10
-- SELECT year, COUNT(DISTINCT name) as distinct_names
-- FROM names
-- GROUP BY year
-- ORDER BY distinct_names DESC
-- LIMIT 1;
-- 2008 had the most distinct names

-- 11
-- SELECT *
-- FROM names
-- WHERE name LIKE 'X%' AND gender = 'F'
-- ORDER BY num_registered DESC
-- LIMIT 1;
-- Ximena is the most popular female name to start with X.

-- 12
-- SELECT COUNT(DISTINCT name) as distinct_name
-- FROM names
-- WHERE name LIKE 'Q%' AND name NOT LIKE '_u%'
-- There are 46 names that start with Q and the 
-- second letter is not u

-- 13
-- SELECT name, SUM(num_registered) as total_registered
-- FROM names
-- WHERE name LIKE 'Stephen' OR name LIKE 'Steven'
-- GROUP BY name;
-- Steven is the more popular spelling

-- 14
-- SELECT name, COUNT(DISTINCT gender) as total_gender
-- FROM names
-- GROUP BY name
-- HAVING COUNT(DISTINCT gender) = 2
-- There are 10.59% of names are unisex

--15
-- SELECT name, COUNT(DISTINCT year) as total_years
-- FROM names
-- GROUP BY name
-- HAVING COUNT(DISTINCT year) = 139;
-- There are 921 names that appear in all years

-- 16
-- SELECT name, COUNT(DISTINCT year) as total_years
-- FROM names
-- GROUP BY name
-- HAVING COUNT(DISTINCT year) = 1;
-- There are 21123 names that have appeared in only 1
-- year

-- 17
-- SELECT name, MIN(year) as first_year, MAX(year) as last_year
-- FROM names
-- GROUP BY name
-- HAVING MIN(year) >= 1950 AND MAX(year) <= 1959;
-- 661 names have only appeared in the 1950s

-- 18 
-- SELECT name, MIN(year) as first_year
-- FROM names
-- GROUP BY name
-- HAVING MIN(year) BETWEEN 2010 AND 2019;
-- 11270 names first appeared in the 2010s

-- 19 
-- SELECT name, MAX(year) as last_year
-- FROM names
-- GROUP BY name
-- ORDER BY last_year
-- LIMIT 3;
-- Zilpah and Roll have not been used since 1881.

-- 20 
-- SELECT name, gender, SUM(num_registered) as total_registerted
-- FROM names
-- WHERE name LIKE 'Hayden'
-- GROUP BY name, gender;
-- There are more male Haydens than female Haydens.

-- SELECT *
-- FROM names
-- WHERE year = 1998 AND name LIKE 'Hayden';
-- There were 2395 other humans born the same year as
-- me and named Hayden.

-- SELECT name, MIN(year) as first_year, MAX(year) as last_year
-- FROM names 
-- WHERE name LIKE 'Hayden'
-- GROUP BY name;
-- The first Hadyen was in 1880 and the last Hayden was
-- in 2018.

-- SELECT name, COUNT(DISTINCT year) as total_years
-- FROM names
-- WHERE name LIKE 'Hayden'
-- GROUP BY name;
-- There were 6 years where no Haydens were born.