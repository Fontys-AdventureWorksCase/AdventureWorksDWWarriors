IF OBJECT_ID(N'dbo.Dim_Customer', N'U') IS NULL
BEGIN

CREATE TABLE [dbo].[Dim_Customer](
[CustomerID] [int] IDENTITY(1,1) PRIMARY KEY,
[Title] [nvarchar](50) NULL,
[FirstName] [nvarchar](50) NULL,
[MiddleName] [nvarchar](50) NULL,
[LastName] [nvarchar](50) NULL,
[PersonType] [nchar](50) NULL
)

END;
GO