IF OBJECT_ID(N'dbo.Fact_Sales', N'U') IS NULL 
BEGIN   


CREATE TABLE [dbo].[Fact_Sales] (
	[ProductKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Product(ProductKey),
	[SalesPersonKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_SalesPerson(SalesPersonKey),
	[CustomerKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Customer(CustomerID),
	[SalesTerritoryKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_SalesTerritory(TerritoryKey),
	[BillToLocationKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Location(LocationKey),
	[ShipToLocationKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Location(LocationKey),
	[OrderDateKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Date(DateKey),
	[DueDateKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Date(DateKey),
	[ShipDateKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Date(DateKey),
	[SalesTypeKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_SalesType(SalesTypeKey),
	[SpecialOfferKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_SpecialOffer(SpecialOfferKey),
	[OrderQty] [smallint] NULL,
	[UnitPrice] [money] NULL,
	[UnitPriceDiscount] [float] NULL,
	[ProductCost] [money] NULL,
	[Profit] [money] NULL,
	[OrderTotalPrice] [money] NULL
);


END;
GO







