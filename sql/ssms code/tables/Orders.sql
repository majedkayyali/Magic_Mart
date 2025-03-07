USE [Magic_mart]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 3/6/2025 6:23:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Orders](
	[ID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[Order_Status] [varchar](50) NULL,
	[Order_Date] [date] NULL,
	[Total_Price] [decimal](10, 2) NULL,
	[Delivery_Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO

ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO

ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO


