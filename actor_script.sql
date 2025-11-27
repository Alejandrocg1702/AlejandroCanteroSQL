USE sakila;


UPDATE actor
SET 
    first_name = LOWER(TRIM(first_name)),
    last_name  = LOWER(TRIM(last_name))
WHERE actor_id > 0;


UPDATE film_actor fa
JOIN actor a1 ON fa.actor_id = a1.actor_id
JOIN actor a2 
    ON a1.first_name = a2.first_name
   AND a1.last_name  = a2.last_name
   AND a1.actor_id > a2.actor_id
SET fa.actor_id = a2.actor_id;


DELETE a1
FROM actor a1
JOIN actor a2
  ON a1.first_name = a2.first_name
 AND a1.last_name  = a2.last_name
 AND a1.actor_id > a2.actor_id
WHERE a1.actor_id > 0;





UPDATE actor
SET actor_full_name = CONCAT(first_name, ' ', last_name)
WHERE actor_id > 0;


DELETE fa
FROM film_actor fa
LEFT JOIN film f ON f.film_id = fa.film_id
LEFT JOIN actor a ON a.actor_id = fa.actor_id
WHERE f.film_id IS NULL OR a.actor_id IS NULL;

