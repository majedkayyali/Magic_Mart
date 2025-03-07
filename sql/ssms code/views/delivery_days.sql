CREATE VIEW Delivery_Days AS
SELECT 
    o.ID AS OrderID, 
    o.Order_Date, 
    o.Delivery_Date, 
    CASE 
        WHEN TRY_CONVERT(DATE, o.Delivery_Date) IS NULL THEN NULL  
        ELSE DATEDIFF(DAY, o.Order_Date, CONVERT(DATE, o.Delivery_Date))
    END AS Delivery_Days
FROM Orders o;
