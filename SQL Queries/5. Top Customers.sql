-- 5. Top Customers
SELECT CustomerID, SUM(Quantity * UnitPrice) AS Total_Spent
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;