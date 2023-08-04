SELECT f.film_id, f.title, f.length, COUNT(*) AS rental_count
FROM film f
JOIN inventory r ON f.film_id = r.film_id
JOIN rental c ON r.inventory_id = c.rental_id
GROUP BY f.film_id
ORDER BY COUNT(*) DESC;