--Question 1. Create a Stored Procedure that will insert a new film into the film table with the
--following arguments: title, description, release_year, language_id, rental_duration,
--rental_rate, length, replace_cost, rating
CREATE OR REPLACE PROCEDURE add_film(
title VARCHAR, 
description TEXT, 
release_year YEAR, 
language_id INTEGER,
rental_duration INTEGER,
rental_rate NUMERIC(4,2), 
length INTEGER, 
replace_cost NUMERIC(5,2), 
rating mpaa_rating
)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO film(title, description, release_year, laguage_id, rental_duration,
rental_rate, length, replace_cost, rating)
	VALUES(title, description, release_year, laguage_id, rental_duration,
rental_rate, length, replace_cost, rating);
END;
$$;

CALL add_film('Top Gun: Maverick', 'Cool Movie', 2022, 1, 7, 4.99, 150, 19.99, 'PG-13');


--Question 2. Create a Stored Function that will take in a category_id and return the number of
--films in that category
SELECT cetegory_id, count(*)
FROM film_catagory
WHERE category_id = 2
GROUP BY category_id;

CREATE OR REPLACE FUNCTION get_category_count(cat_id INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
	DECLARE  category_count INTEGER
BEGIN 
	SELECT COUNT(*) category_count
	FROM film_category 
	WHERE category_id = category_id 
	GROUP BY category_id;
	RETURN category_count;
END;
$$;







