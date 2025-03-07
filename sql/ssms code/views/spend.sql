USE [Magic_mart]
GO

/****** Object:  View [dbo].[spend]    Script Date: 3/6/2025 6:43:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[spend] as
select c.ID , C.Username , sum(o.Total_Price) as total_spend
from Customers c
join Orders o on c.ID=o.CustomerID
group by c.Username,c.ID
;
GO


