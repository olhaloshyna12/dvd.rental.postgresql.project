SELECT film_id, length, replacement_cost,
CASE WHEN replacement_cost is null then 'length'
WHEN length NOT in (select replacement_cost from film where length is not null) then 'True'
		  else 'false'
		  END
 FROM FILM;





