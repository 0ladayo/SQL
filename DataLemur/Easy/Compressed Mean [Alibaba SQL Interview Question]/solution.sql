SELECT ROUND(CAST(SUM(order_occurrences*item_count) AS DECIMAL) / CAST(SUM(order_occurrences) AS DECIMAL), 1) mean

FROM items_per_order
