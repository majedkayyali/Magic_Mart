USE [Magic_mart]
GO

/****** Object:  Table [dbo].[Order_Items]    Script Date: 3/6/2025 6:23:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order_Items](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Shipping_Date] [date] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Freight_Value] [int] NOT NULL,
	[Order_Item_Quantity] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Order_Items]  WITH NOCHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO


