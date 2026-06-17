-- 2. Top 100 Revenue Generating Products
SELECT Description, SUM(Quantity * UnitPrice) AS Revenue
FROM online_retail
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;