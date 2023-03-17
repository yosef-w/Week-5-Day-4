--Question 1. Create a Stored Procedure that will insert a new film into the film table with the
--following arguments: title, description, release_year, language_id, rental_duration,
--rental_rate, length, replace_cost, rating
CREATE OR REPLACE PROCEDURE add_film(title VARCHAR, description VARCHAR, release_year INTEGER, rental_duration INTEGER,
renta_rate INTEGER, length INTEGER, replace_cost INTEGER, rating VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO actor(title, description, release_year, rental_duration,
renta_rate, length, replace_cost, rating)
	VALUES(first_name, last_name, NOW());
END;
$$;

SELECT *
FROM film 