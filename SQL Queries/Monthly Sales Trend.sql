-- 6. Monthly Sales Trend
SELECT 
    DATE_FORMAT(STR_TO_DATE(InvoiceDate, '%d-%m-%Y %H:%i'), '%Y-%m') AS Sales_Month,
    SUM(Quantity * UnitPrice) AS Monthly_Revenue
FROM online_retail
GROUP BY Sales_Month
ORDER BY Sales_Month;