INSERT INTO dbo.Inventory (
    ID, Category, Quantity, SKU, Image, Retail_Price, Landing_Cost_Per_Unit
)
SELECT 
    ID, Category, Quantity, SKU, Image, Retail_Price, Landing_Cost_Per_Unit
FROM dbo.imp_Inventory;