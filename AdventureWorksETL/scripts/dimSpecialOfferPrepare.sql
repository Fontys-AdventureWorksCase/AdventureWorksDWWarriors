
use StagingDW;

IF OBJECT_ID(N'dbo.Dim_SpecialOffer_stage_updates', N'U') IS NULL BEGIN
CREATE TABLE [dbo].[Dim_SpecialOffer_stage_updates](
	[SpecialOfferKey] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Category] [nvarchar](255) NOT NULL,
	[Type] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Dim_SpecialOffer] PRIMARY KEY CLUSTERED 
(
	[SpecialOfferKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
end;


truncate table [dbo].[Dim_SpecialOffer_stage_updates];

use AdventureWorksDw;


IF OBJECT_ID(N'dbo.Dim_SpecialOffer', N'U') IS NULL BEGIN


CREATE TABLE [dbo].[Dim_SpecialOffer](
	[SpecialOfferKey] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Category] [nvarchar](255) NOT NULL,
	[Type] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Dim_SpecialOffer] PRIMARY KEY CLUSTERED 
(
	[SpecialOfferKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

end;
