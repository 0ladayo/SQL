SELECT ROUND(CAST(col1 AS DECIMAL)/CAST(col2 AS DECIMAL)*100.0,1)

FROM

(SELECT 

SUM(CASE WHEN  call_category IS NULL OR call_category = 'n/a' THEN 1 ELSE 0 END) col1,

COUNT(*) col2

FROM callers) new_table