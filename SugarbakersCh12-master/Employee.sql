CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [First Name] VARCHAR(50) NULL, 
    [Last Name] VARCHAR(50) NOT NULL, 
    [Address] VARCHAR(50) NULL, 
    [Zip] VARCHAR(20) NULL, 
    [Position] VARCHAR(50) NULL, 
    [DepartmentID] INT NULL, 
    [Salary] MONEY NULL,
    CONSTRAINT FK_employeeZip FOREIGN KEY(Zip) REFERENCES Zipcode(Zipcode),
    CONSTRAINT FK_employeeDepartment FOREIGN KEY (DepartmentID) REFERENCES Department(Id)
)
