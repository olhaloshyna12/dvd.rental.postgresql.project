SELECT
payment_id,
amount,
  AVG(amount) OVER () AS overall_average, stddev(amount) OVER () AS standard_deviation
FROM payment;