IF OBJECT_ID(N'dbo.Dim_SalesPerson', N'U') IS NULL 
BEGIN   


CREATE TABLE [dbo].[Dim_SalesPerson] (
    SalesPersonKey int IDENTITY(1,1) PRIMARY KEY,
    BusinessEntityId int NOT NULL UNIQUE,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    Dob date,
    HireDate date,
    JobTitle nvarchar(50),
    Gender nchar(1),
    PersonType nchar(2),
)



END;
GO