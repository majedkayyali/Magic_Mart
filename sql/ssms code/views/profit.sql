USE [Magic_mart]
GO

/****** Object:  View [dbo].[profit]    Script Date: 3/6/2025 6:43:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[profit] as
select inv.SKU , inv.Category
,sum((oi.Sale_Price-inv.Landing_Cost_Per_Unit)*oi.Order_Item_Quantity) as total_profit

from Inventory inv
join Order_Items oi on oi.ProductID=inv.ID
group by inv.SKU,inv.Category
GO


