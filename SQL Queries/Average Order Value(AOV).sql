-- 7. Average Order Value(AOV)
SELECT SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo) AS Average_Order_Value
FROM online_retail
WHERE Quantity > 0;