SELECT customer.customer_id, payment.amount
FROM customer
CROSS JOIN payment
LIMIT 500;