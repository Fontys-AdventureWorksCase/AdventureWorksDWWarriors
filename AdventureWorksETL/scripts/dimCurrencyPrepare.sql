use AdventureWorksDw;

IF OBJECT_ID(N'dbo.Dim_Currency', N'U') IS NULL BEGIN
CREATE TABLE [dbo].[Dim_Currency](
	[CurrencyKey] [nvarchar](3) NOT NULL,
	[CurrencyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Dim_Currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

end;

IF OBJECT_ID(N'dbo.Fact_CurrencyRate', N'U') IS NULL BEGIN
CREATE TABLE [dbo].[Fact_CurrencyRate](
	[CurrencyRateKey] [int] NOT NULL,
	[FromCurrencyKey] [nvarchar](3) NOT NULL FOREIGN KEY REFERENCES Dim_Currency(CurrencyKey),
	[ToCurrencyKey] [nvarchar](3) NOT NULL FOREIGN KEY REFERENCES Dim_Currency(CurrencyKey),
	[RateDateKey] [int] NOT NULL FOREIGN KEY REFERENCES Dim_Date(DateKey),
 CONSTRAINT [PK_Fact_CurrencyRate] PRIMARY KEY CLUSTERED 
(
	[CurrencyRateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
end;

truncate table [dbo].[Fact_CurrencyRate];
--truncate table [dbo].[Dim_Currency];
