
use StagingDW;

IF OBJECT_ID(N'dbo.Dim_SalesTerritory_stage_updates', N'U') IS NULL BEGIN
CREATE TABLE [dbo].[Dim_SalesTerritory_stage_updates](
	[TerritoryKey] [int] NOT NULL,
	[Territory] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Continent] [nvarchar](50) NOT NULL
)
end;


truncate table [dbo].[Dim_SalesTerritory_stage_updates];

use AdventureWorksDw;


IF OBJECT_ID(N'dbo.Dim_SalesTerritory', N'U') IS NULL BEGIN


CREATE TABLE [dbo].[Dim_SalesTerritory](
	[TerritoryKey] [int] NOT NULL,
	[Territory] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Continent] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dim_SalesTerritory] PRIMARY KEY CLUSTERED 
(
	[TerritoryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

end;
