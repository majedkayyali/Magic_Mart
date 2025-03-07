USE [Magic_mart]
GO

INSERT INTO [dbo].[Inventory]
           ([ID]
           ,[Category]
           ,[Quantity]
           ,[SKU]
           ,[Image]
           ,[Retail_Price]
           ,[Landing_Cost_Per_Unit])
  select * from [dbo].imp_Inventory;
