USE [Magic_mart]
GO

INSERT INTO [dbo].[Orders]
           ([ID]
           ,[CustomerID]
           ,[Order_Status]
           ,[Order_Date]
           ,[Total_Price]
           ,[Delivery_Date])
  select * from [dbo].imp_Orders;


