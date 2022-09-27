SELECT DISTINCT replacement_cost FROM film;

SELECT COUNT (DISTINCT replacement_cost) FROM film; 
-- answer is 21

SELECT COUNT (*) FROM film
WHERE (title LIKE 'T%' AND rating = 'G');
-- answer is 9

SELECT COUNT(*) FROM country
WHERE country LIKE '_____' ;
-- answer is 13

SELECT COUNT(*) FROM city
WHERE city ILIKE '%r' ;
-- answer is 33