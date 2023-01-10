SELECT manufacturer, COUNT(drug_count), SUM(ABS(total_loss)) total_loss

FROM

(SELECT manufacturer, COUNT(drug) drug_count, (total_sales - cogs) total_loss

FROM pharmacy_sales

GROUP BY 1,3

HAVING (total_sales - cogs) < 0) new_table

GROUP BY manufacturer

ORDER BY total_loss DESC