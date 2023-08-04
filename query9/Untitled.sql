SELECT amount, COUNT(*) AS payment_count
FROM payment
GROUP BY amount;