-- Leonardo Olmos Saucedo / Lab SQL Queries 4

USE sakila;

-- 1. Get film ratings.
SELECT DISTINCT(f.rating) AS ratings
FROM film f
ORDER BY 1; 

-- 2. Get release years.
SELECT DISTINCT(f.release_year) AS release_year
FROM film f;

-- 3. Get all films with ARMAGEDDON in the title.
SELECT * 
FROM film f
WHERE f.title LIKE '%ARMAGEDDON%';

-- 4. Get all films with APOLLO in the title
SELECT * 
FROM film f
WHERE f.title LIKE '%APOLLO%';

-- 5. Get all films which title ends with APOLLO.
SELECT * 
FROM film f
WHERE f.title LIKE '%APOLLO';

-- 6. Get all films with word DATE in the title.
SELECT * 
FROM film f 
WHERE f.title REGEXP ('^DATE | DATE$');

-- 7. Get 10 films with the longest title.
SELECT f.*, LENGTH(f.title) AS title_length
FROM film f
ORDER BY title_length DESC
LIMIT 10;

-- 8. Get 10 the longest films.
SELECT * 
FROM film 
ORDER BY length DESC 
LIMIT 10;

-- 9. How many films include Behind the Scenes content?
SELECT COUNT(*) AS total_films 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';

-- 10. List films ordered by release year and title in alphabetical order.
SELECT * 
FROM film
ORDER BY release_year, title;
