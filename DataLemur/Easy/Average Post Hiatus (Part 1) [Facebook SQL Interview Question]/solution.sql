SELECT user_id, (MAX(DATE(post_date)) - MIN(DATE(post_date))) AS days_between

FROM posts

WHERE user_id IN (SELECT user_id

FROM

(SELECT user_id, COUNT(user_id) counts, EXTRACT(YEAR FROM post_date) years

FROM posts

WHERE EXTRACT(YEAR FROM post_date) = 2021

GROUP BY user_id, years

HAVING COUNT(user_id) > 1) AS new_table)

GROUP BY user_id