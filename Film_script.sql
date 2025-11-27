SELECT
    f.film_id,
    LOWER(TRIM(f.title))           AS title,
    LOWER(TRIM(f.description))     AS description,
    f.release_year,
    LOWER(TRIM(l.name))            AS language,
    LOWER(TRIM(c.name))            AS category,
    f.rental_duration,
    f.rental_rate,
    f.length,
    f.replacement_cost,
    f.rating,
    f.is_long_film,
    COUNT(i.inventory_id)          AS total_copies
FROM film f
LEFT JOIN language l 
       ON f.language_id = l.language_id
LEFT JOIN film_category fc 
       ON fc.film_id = f.film_id
LEFT JOIN category c 
       ON c.category_id = fc.category_id
LEFT JOIN inventory i 
       ON i.film_id = f.film_id
WHERE f.length > 0
  AND f.rating IS NOT NULL
GROUP BY 
    f.film_id, f.title, f.description,
    f.release_year, l.name, c.name,
    f.rental_duration, f.rental_rate,
    f.length, f.replacement_cost,
    f.rating, f.is_long_film;
