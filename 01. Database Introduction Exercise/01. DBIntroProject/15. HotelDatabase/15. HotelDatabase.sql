CREATE DATABASE Hotel 
USE Hotel

--•	Employees (Id, FirstName, LastName, Title, Notes)

CREATE TABLE Employees
(
Id INT PRIMARY KEY NOT NULL,
FirstName NVARCHAR(100) NOT NULL,
LastName NVARCHAR(100) NOT NULL, 
Title NVARCHAR(50) NOT NULL, 
Notes NVARCHAR(MAX)
)

INSERT INTO Employees(Id, FirstName, LastName, Title, Notes)
VALUES 
(1, 'Ivan', 'Ivanov', 'Arh', NULL),
(2, 'Pesho', 'Peshov', 'Land', NULL),
(3, 'Koko', 'Stoianov', 'Arh', NULL)

--•	Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
CREATE TABLE Customers
(
AccountNumber INT PRIMARY KEY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
PhoneNumber CHAR(10) NOT NULL,
EmergencyName NVARCHAR(50) NOT NULL,
EmergencyNumber CHAR(10)NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
VALUES
(1234567,'Ivan', 'Ivanov', '1234567890', 'Stas', '1234567890', NULL),
(1234568,'Pesho', 'Peshov', '1134567890', 'Stas', '1234567890', NULL),
(1234569,'Koko', 'Stoianov', '1434567890', 'Stas', '1234567890', NULL)

--•	RoomStatus (RoomStatus, Notes)
CREATE TABLE RoomStatus
(
RoomStatus VARCHAR(15) NOT NULL,
Notes NVARCHAR(MAX)
)
INSERT INTO RoomStatus (RoomStatus, Notes)
VALUES
('Rent', NULL),
('Free',NULL),
('Cleaning', NULL)

--•	RoomTypes (RoomType, Notes)
CREATE TABLE RoomTypes
(
RoomType VARCHAR(15) NOT NULL,
Notes NVARCHAR(MAX)
)
INSERT INTO RoomTypes (RoomType, Notes)
VALUES
('Studio', NULL),
('Cabinet', NULL),
('Single', NULL)

--•	BedTypes (BedType, Notes)
CREATE TABLE BedTypes
(
BedType VARCHAR(15) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO BedTypes (BedType, Notes)
VALUES
('Single', NULL),
('Double', NULL),
('Kid', NULL)

--•	Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
CREATE TABLE Rooms
(
RoomNumber INT PRIMARY KEY,
RoomType VARCHAR(20) NOT NULL,
BedType VARCHAR(20) NOT NULL, 
Rate DECIMAL(6,2) NOT NULL,
RoomStatus VARCHAR(20) NOT NULL, 
Notes NVARCHAR(MAX)
)

INSERT INTO Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
VALUES
(1, 'Studio','Single', 125.00, 'Rent', NULL),
(2, 'Cabinet','Double', 100.00, 'Rent', NULL),
(3, 'Single','Kid', 50.00, 'Cleaning', NULL)

--•	Payments (Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)

CREATE TABLE Payments
(
Id INT PRIMARY KEY NOT NULL, 
EmployeeId INT NOT NULL, 
PaymentDate DATETIME NOT NULL, 
AccountNumber VARCHAR(15),
FirstDateOccupied DATETIME NOT NULL, 
LastDateOccupied DATETIME NOT NULL, 
TotalDays INT NOT NULL, 
AmountCharged DECIMAL(6,2) NOT NULL, 
TaxRate DECIMAL(6,2) NOT NULL, 
TaxAmount DECIMAL(6,2) NOT NULL,
PaymentTotal DECIMAL(6,2) NOT NULL, 
Notes NVARCHAR(MAX)
)
INSERT INTO Payments (Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
VALUES
(1, 1, 10/5/2012, 1234567, 10/5/2012, 15/5/2012, 5, 125.25, 100.00, 
125.25, 250.00, NULL),
(2, 2, 10/5/2012, 1234568, 10/5/2012, 15/5/2012, 5, 125.25, 100.00, 125.25, 250.00, NULL),
(3, 3, 10/5/2012, 1234569, 10/5/2012, 15/5/2012, 5, 125.25, 100.00, 125.25, 250.00, NULL)

--•	Occupancies (Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
CREATE TABLE Occupancies
(Id INT PRIMARY KEY NOT NULL, 
EmployeeId INT NOT NULL, 
DateOccupied DATETIME NOT NULL, 
AccountNumber VARCHAR(15), 
RoomNumber INT NOT NULL, 
RateApplied BIT NOT NULL, 
PhoneCharge DECIMAL(6,2), 
Notes NVARCHAR(MAX)
)
INSERT INTO Occupancies (Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
VALUES
(1, 2, 10/5/2012, 1234568, 125, 1, 124.00, NULL),
(2, 3, 10/5/2012, 1234569, 125, 0, 124.00, NULL),
(3, 1, 10/5/2012, 1234567, 125, 1, 124.00, NULL)

--Problem 23.	Decrease Tax Rate
UPDATE Payments
SET TaxRate *=0.97

SELECT  TaxRate 
FROM Payments

DELETE FROM Occupancies 