CREATE DATABASE University
USE University

CREATE TABLE Subjects
(
SubjectID INT PRIMARY KEY IDENTITY,
SubjectName VARCHAR(50) NOT NULL,
)

CREATE TABLE Majors
(
MajorID INT PRIMARY KEY IDENTITY,
Name VARCHAR(50) NOT NULL,
)

CREATE TABLE Students
(
StudentID INT PRIMARY KEY IDENTITY,
StudentNumber INT NOT NULL, 
StudentName VARCHAR(50) NOT NULL,
MajorID INT FOREIGN KEY REFERENCES Majors(MajorID)
)

CREATE TABLE Agenda
(
StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
SubjectID INT FOREIGN KEY REFERENCES Subjects(SubjectID)

CONSTRAINT PK_Student_Subject PRIMARY KEY (StudentID, SubjectID)
)


CREATE TABLE Payments
(
PaymentID INT PRIMARY KEY IDENTITY,
PaymentDate  Date NOT NULL,
PaymentAmount DECIMAL(5,2) NOT NULL,
StudentID INT FOREIGN KEY REFERENCES Students(StudentID)
)