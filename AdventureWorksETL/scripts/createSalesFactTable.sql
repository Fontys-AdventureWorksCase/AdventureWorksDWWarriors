IF OBJECT_ID(N'dbo.Fact_Sales', N'U') IS NULL 
BEGIN   


CREATE TABLE [dbo].[Fact_Sales] (
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [int] NOT NULL,
	[ProductKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Product(ProductKey),
	[SalesPersonKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_SalesPerson(SalesPersonKey),
	[BillToLocationKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Location(LocationKey),
	[ShipToLocationKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Location(LocationKey),
	[OrderDateKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Date(DateKey),
	[DueDateKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Date(DateKey),
	[ShipDateKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Date(DateKey),
	[OrderQty] [smallint] NULL,
	[UnitPrice] [money] NULL,
	[UnitPriceDiscount] [float] NULL,
	[ProductCost] [money] NULL
);


END;
GO







