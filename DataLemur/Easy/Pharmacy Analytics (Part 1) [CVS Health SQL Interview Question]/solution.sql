SELECT drug, (total_sales - cogs) total_profit

FROM pharmacy_sales

ORDER BY 2 DESC

LIMIT 3