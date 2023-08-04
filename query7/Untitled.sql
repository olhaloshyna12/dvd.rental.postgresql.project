SELECT customer_id , count(*) AS amount_Count
FROM Payment
WHERE amount BETWEEN '1' AND '2' 
GROUP BY customer_id 
ORDER BY amount_Count DESC;