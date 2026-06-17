-- 8.Top 5 Products in Each Country
WITH RankedProducts AS (
    SELECT 
        Country, 
        Description, 
        SUM(Quantity * UnitPrice) AS Revenue,
        ROW_NUMBER() OVER (PARTITION BY Country ORDER BY SUM(Quantity * UnitPrice) DESC) AS Rank_Position
    FROM online_retail
    GROUP BY Country, Description
)
SELECT Country, Description, Revenue, Rank_Position
FROM RankedProducts
WHERE Rank_Position <= 5;