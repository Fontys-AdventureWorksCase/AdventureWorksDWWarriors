IF OBJECT_ID(N'dbo.Dim_SalesType', N'U') IS NULL 
BEGIN   

CREATE TABLE [dbo].[Dim_SalesType](
	[SalesTypeKey] [int] IDENTITY(1,1) PRIMARY KEY,
	[TypeName] [nvarchar](15) NOT NULL UNIQUE
);

INSERT INTO Dim_SalesType
VALUES('Internet Sale'), ('Other Sale');

END;
GO