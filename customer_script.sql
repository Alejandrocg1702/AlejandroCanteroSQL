Use sakila;

SELECT 
customer_id,
LOWER(first_name) AS first_name,
LOWER(last_name) AS last_name,
LOWER(email) AS email,
active,
LOWER(address) AS address,
LOWER(district) AS district,
postal_code,
LOWER(city) AS city,
LOWER(country) AS country,
rental_date,
return_date,
amount,
payment_date,
DATEDIFF(return_date, rental_date) AS rental_duration
FROM vista_customer_activity
WHERE
 rental_date IS NOT NULL
 AND return_date IS NOT NULL
 AND rental_date < return_date
 AND amount > 0;