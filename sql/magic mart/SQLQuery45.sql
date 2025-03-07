ALTER TABLE Orders
ADD delivery_Status AS (
    CASE 
        WHEN DATEDIFF(DAY, Order_Date, Delivery_Date) BETWEEN 1 AND 3 THEN 'On Time'
        WHEN DATEDIFF(DAY, Order_Date, Delivery_Date) BETWEEN 4 AND 7 THEN 'Delayed'
        ELSE 'Late'
    END
);
