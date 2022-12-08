1484.Group sold products by the Date

SELECT sell_date, count(distinct product) as num_sold,group_concat(distinct product order by product ASC) as products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date