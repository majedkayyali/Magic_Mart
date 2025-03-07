
CREATE VIEW [dbo].[shipping_hcost] AS
SELECT 
o.ID , o.total_price ,O.CustomerID,
sum(oi.Freight_Value)as total_cost,
sum(oi.Freight_Value/o.Total_Price)*100 as prect
from Orders o 
join Order_Items oi on o.ID=oi.OrderID
group by o.ID , o.Total_Price,O.CustomerID;