USE [Magic_mart]
GO

INSERT INTO [dbo].[Product_Catalog]
           ([ID]
           ,[Category_Name]
           ,[Category_Description])
 select * from [dbo].imp_Product_Catalog;