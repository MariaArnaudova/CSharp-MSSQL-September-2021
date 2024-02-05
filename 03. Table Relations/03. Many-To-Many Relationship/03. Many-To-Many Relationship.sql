--ISNULL имаше в една от задачите от упражнението за CRUD или по-точно 17-та задача. CREATE VIEW [V_EmployeeNameJobTitle] AS
--SELECT CONCAT([FirstName], ' ', ISNULL([MiddleName], ''), ' ', [LastName]) AS [Full Name], [JobTitle] FROM [Employees]  


CREATE TABLE Students
(StudentID INT PRIMARY KEY IDENTITY ,
[Name] VARCHAR(50) NOT NULL
)


CREATE TABLE Exams
(ExamID INT PRIMARY KEY IDENTITY(101,1),
 [Name] VARCHAR(50)
 )

 CREATE TABLE StudentsExams
(
StudentID INT ,
ExamID INT
CONSTRAINT PK_Students_Exams PRIMARY KEY(StudentID, ExamID),
CONSTRAINT FK_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
CONSTRAINT FK_Exams FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
)

-- CREATE TABLE StudentsExams  
--(
--StudentID INT REFERENCES Students(StudentID),
--ExamID INT REFERENCES Exams(ExamID)
--CONSTRAINT PK_Students_Exams PRIMARY KEY(StudentID, ExamID),
--)

INSERT INTO Students
VALUES
   ('Mila'),                                      
   ('Toni'),
   ('Ron')

   INSERT INTO Exams
   VALUES
   ('SpringMVC'),
   ('Neo4j'),
   ('Oracle 11g')

INSERT INTO StudentsExams
VALUES
(1,	101),
(1,	102),
(2,	101),
(3,	103),
(2,	102),
(2,	103)
