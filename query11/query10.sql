SELECT
  customer_id,
  payment_id,
  payment_date,
  LAG(payment_date) OVER (PARTITION BY customer_id ORDER BY payment_date) AS previous_payment_date,
  payment_date - LAG(payment_date) OVER (PARTITION BY customer_id ORDER BY payment_date) AS payment_time_diff
FROM
  payment
ORDER BY
  customer_id, payment_date;