IF OBJECT_ID(N'dbo.Dim_Customer', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[Dim_Customer](
[CustomerID] [int] IDENTITY(1,1) PRIMARY KEY,
[PersonID] [int] NULL,
[StoreID] [int] NULL,
[TerritoryID] [int] NULL,
)

END;
GO