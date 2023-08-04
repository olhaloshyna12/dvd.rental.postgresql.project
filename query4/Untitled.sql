SELECT MIN(RENTAL_RATE) as min_length, MAX(RENTAL_RATE) as max_length 
FROM film 
WHERE TITLE LIKE 'B%';