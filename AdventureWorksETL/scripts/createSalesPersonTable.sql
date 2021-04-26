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
);

INSERT INTO [dbo].[Dim_SalesPerson](BusinessEntityId, FirstName, LastName, Dob, HireDate, JobTitle, Gender, PersonType)
VALUES ('-1', 'NA', 'No Salesperson', '1900-01-01', '1900-01-01', 'For online sales', 'M', 'SP');

END;
GO