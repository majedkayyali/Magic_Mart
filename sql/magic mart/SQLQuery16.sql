ALTER TABLE Order_Items
ADD Profit AS (Sale_Price - (Landing_Cost_Per_Unit * Order_Item_Quantity));
