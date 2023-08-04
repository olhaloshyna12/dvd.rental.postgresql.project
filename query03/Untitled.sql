SELECT MAX (payment_count), MIN (payment_count)
FROM (
    SELECT customer_id, COUNT(*) AS payment_count
    FROM payment
    GROUP BY customer_id
) AS payment_counts;