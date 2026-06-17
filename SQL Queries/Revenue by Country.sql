-- 4. Revenue by Country

SELECT Country, SUM(Quantity * UnitPrice) AS Total_Revenue
FROM online_retail
GROUP BY Country
ORDER BY Total_Revenue DESC;