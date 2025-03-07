USE [Magic_mart]
GO

/****** Object:  View [dbo].[CustomerOrderSummary]    Script Date: 3/6/2025 6:42:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[CustomerOrderSummary] AS
SELECT c.ID AS CustomerID, c.Username, COUNT(o.ID) AS Total_OrderNumber
FROM Customers c
RIGHT JOIN Orders o ON c.ID = o.CustomerID
GROUP BY c.ID, c.Username;
GO


