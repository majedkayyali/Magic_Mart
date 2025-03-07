USE [Magic_mart]
GO

/****** Object:  Table [dbo].[Payments]    Script Date: 3/6/2025 6:24:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payments](
	[OrderID] [int] NOT NULL,
	[PaymentID] [int] NOT NULL,
	[Payment_Type] [varchar](50) NULL,
	[Payment_Value] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Payments]  WITH NOCHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO


