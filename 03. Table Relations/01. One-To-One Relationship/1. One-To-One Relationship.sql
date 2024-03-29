CREATE DATABASE TableRelations
USE TableRelations

CREATE TABLE  Passports
(
PassportID INT PRIMARY KEY IDENTITY (101,1)	,
PassportNumber CHAR(8)
)

CREATE TABLE Persons
(
PersonID INT PRIMARY KEY IDENTITY NOT NULL ,
FirstName VARCHAR(50) NOT NULL,
Salary DECIMAL(15,2) NOT NULL,
PassportID INT UNIQUE FOREIGN KEY REFERENCES Passports(PassportID) 
)

INSERT INTO Passports VALUES
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')

INSERT INTO Persons VALUES
('Roberto',  43300.00, 102 ),                           
('Tom', 56100.00, 103),
('Yana', 60200.00, 101)