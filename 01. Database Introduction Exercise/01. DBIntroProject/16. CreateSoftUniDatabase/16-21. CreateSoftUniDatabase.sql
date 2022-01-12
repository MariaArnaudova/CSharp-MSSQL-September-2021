CREATE DATABASE SoftUni1FIRST
USE SoftUni1FIRST
--•	Towns (Id, Name)
--•	Addresses (Id, AddressText, TownId)
--•	Departments (Id, Name)
--•	Employees (Id, FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)

CREATE TABLE Towns 
(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] VARCHAR(100)
)

INSERT INTO Towns ([Name]) VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas')

CREATE TABLE Addresses 
(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
AddressText VARCHAR(500) NOT NULL, 
TownId INT NOT NULL
)

ALTER TABLE Addresses
ADD CONSTRAINT [FK_AddressTownId]
FOREIGN KEY  (TownId) REFERENCES dbo.Towns(Id)

INSERT INTO Addresses(AddressText, TownId)
VALUES
('New Adress', 1),
('New Adress', 2),
('New Adress', 3),
('New Adress', 4),
('New Adress', 5)

CREATE TABLE Departments
(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] VARCHAR(100)
)

--Engineering, Sales, Marketing, Software Development, Quality Assurance

INSERT INTO Departments([Name])
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'), 
('Quality Assurance')


CREATE TABLE Employees 
(Id INT IDENTITY(1,1) NOT NULL,
FirstName VARCHAR(50) NOT NULL, 
MiddleName VARCHAR(50) NOT NULL, 
LastName VARCHAR(50) NOT NULL, 
JobTitle NVARCHAR(60) NOT NULL, 
DepartmentId INT NOT NULL, 
HireDate DATETIME NOT NULL, 
Salary DECIMAL(8,0), 
AddressId INT NOT NULL
)
ALTER TABLE Employees
ADD CONSTRAINT [FK_EmployeesAddressId]
FOREIGN KEY  (AddressId) REFERENCES dbo.Addresses(Id)

ALTER TABLE Employees
ADD CONSTRAINT [FK_EmployeesDepartmentId]
FOREIGN KEY (DepartmentId) REFERENCES dbo.Departments(Id)

INSERT INTO Employees (FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)
VALUES
('Ivan', 'Ivanov',  'Ivanov', '.NET Developer',	4, 01/02/2013,	3500.00, 1),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1,	02/03/2004,	4000.00, 2),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, 28/08/2016,	525.25, 3),
('Georgi', 'Teziev', 'Ivanov','CEO', 2,	09/12/2007,	3000.00, 4),
('Peter', 'Pan', 'Pan', 'Intern', 3, 28/08/2016, 599.88, 5)

--Problem 19.Basic Select All Fields
SELECT * FROM Towns  
SELECT* FROM Departments 
SELECT* FROM Employees 

--Problem 20.	Basic Select All Fields and Order Them
SELECT * 
FROM Towns  
ORDER BY [Name]
ASC

SELECT * 
FROM Departments 
ORDER BY [Name]
ASC

SELECT * 
FROM Employees  
ORDER BY Salary
DESC

--Problem 21.	Basic Select Some Fields
SELECT  [Name]
FROM Towns  
ORDER BY [Name]
ASC

SELECT  [Name]
FROM Departments   
ORDER BY [Name]
ASC

SELECT FirstName, LastName, JobTitle, Salary
FROM Employees  
ORDER BY Salary
DESC

