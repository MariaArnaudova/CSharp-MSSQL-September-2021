CREATE DATABASE CarRental 

USE CarRental

--•	Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
CREATE TABLE Categories 
(
	         Id INT PRIMARY KEY NOT NULL
, CategoryName NVARCHAR(50) NOT NULL
, DailyRate DECIMAL NOT NULL
, WeeklyRate DECIMAL NOT NULL
, MonthlyRate DECIMAL NOT NULL
, WeekendRate DECIMAL NOT NULL
)

INSERT INTO Categories
(Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES
  (1, 'Family', 200, 100, 50, 150)
, (2, 'Work', 200, 100, 50, 150)
, (3, 'All', 200, 100, 50, 150)

--•	Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
CREATE TABLE Cars
(
		Id INT PRIMARY KEY NOT NULL
		, PlateNumber CHAR(8) NOT NULL
		, Manufacturer NVARCHAR(40) NOT NULL
		, Model NVARCHAR(20) NOT NULL
		, CarYear INT NOT NULL
		, CategoryId INT NOT NULL
		, Doors INT NOT NULL --CHECK( Doors>=2 OR Doors<=6)
		, Picture VARCHAR(MAX)
		, Condition NVARCHAR(20) NOT NULL --CHECK( Condition='New' OR Condition='Used')
		, Available NVARCHAR(20) NOT NULL --CHECK( Available='Yes' OR Available='No')
)

INSERT INTO Cars
(Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
VALUES
  (1, '12345678', 'Shkoda', 'Superb', 2017, 1, 4,NULL, 'New', 'Yes')
, (2, '87654321', 'Shkoda', 'L', 2015, 2, 6, NULL,'New', 'Yes')
, (3, '01234567', 'Shkoda', 'f', 2019, 3, 4,NULL, 'Used', 'No')

--•	Employees (Id, FirstName, LastName, Title, Notes)
CREATE TABLE Employees 
(
	         Id INT PRIMARY KEY NOT NULL
, FirstName NVARCHAR(50) NOT NULL
, LastName NVARCHAR(50) NOT NULL
, Title NVARCHAR(20) NOT NULL
, Notes NVARCHAR(MAX)
)

INSERT INTO Employees (Id, FirstName, LastName, Title, Notes)
VALUES
  (1,'Koko', 'Ivanov', '[Staff]', NULL)
, (2,'Kokicha', 'Ivanov', '[Staff]',NULL)
, (3,'Kolio', 'Ivanov', '[Staff]', NULL)

--•	Customers (Id, DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)
CREATE TABLE Customers 
(
	       Id INT PRIMARY KEY NOT NULL
, DriverLicenceNumber INT NOT NULL
, FullName NVARCHAR(100) NOT NULL
, [Address] NVARCHAR(MAX) NOT NULL
, City NVARCHAR(50) NOT NULL
, ZIPCode INT
, Notes NVARCHAR(MAX)
)

INSERT INTO Customers (Id, DriverLicenceNumber, FullName, [Address],  City, ZIPCode, Notes)
VALUES
  (1, 2345, 'Kolio', 'Sofia, Sedianka', 'Sofia', NULL, 1000)
, (2, 754, 'Kosta', 'Sofia, Sedianka', 'Sofia' ,NULL, 1000)
, (3, 365, 'Krums', 'Sofia, Sedianka', 'Sofia', NULL, 1000)

--•	RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
CREATE  TABLE RentalOrders 
(
	      Id INT PRIMARY KEY NOT NULL
, EmployeeId INT NOT NULL
, CustomerId INT NOT NULL
, CarId INT NOT NULL
, TankLevel Decimal(4,2) NOT NULL
, KilometrageStart INT NOT NULL
, KilometrageEnd INT NOT NULL
, TotalKilometrage INT NOT NULL
, StartDate DATETIME NOT NULL
, EndDate DATETIME NOT NULL 
, TotalDays INT NOT NULL
, RateApplied NVARCHAR(20) NOT NULL
, TaxRate Decimal(6,2) NOT NULL
, OrderStatus NVARCHAR(20) NOT NULL
,  Notes NVARCHAR(MAX)
)

INSERT INTO RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
VALUES
  (1, 1, 1, 1, 57.5, 76000, 77000, 1000, '10/3/2020', GETDATE(), 50, 'Away', 300.00, 'Rent', NULL )
, (2, 2, 2, 2, 57.3, 76000, 77000, 1000, '10/3/2020', GETDATE(), 40, 'Away', 300.00, 'Rent', NULL)
, (3, 3, 3, 3, 57.2, 76000, 77000, 1000, '10/3/2020', GETDATE(), 30, 'Away', 300.00, 'Rent', NULL )