WITH new_table AS

(SELECT manufacturer, ROUND(ROUND(SUM(total_sales), -6)/1000000, 0) sales

FROM pharmacy_sales

GROUP BY 1

ORDER BY 2 DESC)

SELECT manufacturer, CONCAT('$', sales, ' ', 'million') sales

FROM new_table