CREATE DATABASE Movies 

USE Movies
--•	Directors (Id, DirectorName, Notes)
CREATE TABLE Directors
(
  Id INT PRIMARY KEY
, DirectorName NVARCHAR(200) NOT NULL-- VARCHAR(90) 
, Notes NVARCHAR(MAX)
)
--•	Genres (Id, GenreName, Notes)
CREATE TABLE Genres
(
  Id INT PRIMARY KEY
, GenreName NVARCHAR(90) NOT NULL -- VARCHAR(90)
, Notes NVARCHAR(MAX)
)
--•	Categories (Id, CategoryName, Notes)
CREATE TABLE Categories
(
  Id INT PRIMARY KEY
, CategoryName NVARCHAR(100) NOT NULL-- VARCHAR(90)
, Notes NVARCHAR(MAX)
)
--Movies (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
CREATE TABLE Movies
(
  Id INT PRIMARY KEY
, Title NVARCHAR(100) NOT NULL-- VARCHAR(90)
, DirectorId INT NOT NULL 
, CopyrightYear INT NOT NULL
, [Length] DECIMAL(3,2) NOT NULL
, GenreId INT NOT NULL
, CategoryId INT NOT NULL
, Rating INT  NOT NULL CHECK(Rating>=0 OR Rating<=10)
, Notes NVARCHAR(MAX)
)

INSERT INTO Directors
(Id, DirectorName)
VALUES
  (1,'Jerarda')
, (2,'Jerardq')
, (3,'Jerards')
, (4,'Jerarde')
, (5,'Jerardi')

INSERT INTO Genres
(Id, GenreName)
VALUES
  (1,'Comic')
, (2,'Comic')
, (3,'Comic')
, (4,'Comic')
, (5,'Comic')

INSERT INTO Categories
(Id, CategoryName)
VALUES
  (1,'New')
, (2,'New')
, (3,'New')
, (4,'New')
, (5,'New')

INSERT INTO Movies
(Id, Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating )
VALUES
(1, 'Beautiful', 1, 1985, 3.50, 1, 1, 2 )
, (2, 'Beautiful Flower', 2, 1986, 2.50, 2, 2, 4 )
, (3, 'Beautiful Mind', 3, 1987, 4.50, 3, 3, 3 )
, (4, 'Beautiful Nature', 4, 1988, 3.50, 4, 4, 5 )
, (5, 'Beautiful Animal', 5, 1989, 1.50, 5, 5, 8 )