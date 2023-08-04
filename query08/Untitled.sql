SELECT c.film_id, p.actor_id
FROM film_actor c
INNER JOIN actor p ON c.actor_id = p.actor_id;