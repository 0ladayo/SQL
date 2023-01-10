WITH new_table AS(SELECT app_id, SUM(CASE WHEN event_type='click' THEN 1 ELSE 0 END) AS click, SUM(CASE WHEN event_type='impression' THEN 1 ELSE 0 END) AS impression

FROM events

WHERE EXTRACT(YEAR FROM timestamp) = 2022

GROUP BY app_id)

SELECT app_id, ROUND(CAST(click AS DECIMAL)/CAST(impression AS DECIMAL)*100.0, 2)

FROM new_table