IF OBJECT_ID(N'dbo.Dim_Location', N'U') IS NULL 
BEGIN   

CREATE TABLE [dbo].[Dim_Location](
	[LocationKey] [int] IDENTITY(1,1) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvinceCode] [nvarchar](3) NOT NULL,
	[StateProvinceName] [nvarchar](50) NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[CountryRegionName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
([LocationKey] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) 
ON [PRIMARY]
) ON [PRIMARY]



END;
GO