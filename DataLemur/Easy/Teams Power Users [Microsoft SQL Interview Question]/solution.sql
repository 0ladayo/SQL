SELECT sender_id, COUNT(message_id) AS message_count

FROM

(SELECT message_id, sender_id, EXTRACT(MONTH FROM sent_date) AS month, EXTRACT(YEAR FROM sent_date) AS year

FROM messages

WHERE EXTRACT(MONTH FROM sent_date) = 08 AND EXTRACT(YEAR FROM sent_date) = 2022) AS new_table

GROUP BY sender_id

ORDER BY 2 DESC

LIMIT 2