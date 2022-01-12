CREATE TABLE People
(
Id         INT IDENTITY(1,1) NOT NULL,
[Name]     NVARCHAR(200) NOT NULL,
 [Picture] VARCHAR(MAX),
--CHECK (DATALENGTH([Picture]) <= 20000000),
Height   Decimal(3,2),
[Weight]   Decimal(5,2),
Gender    CHAR(1) NOT NULL CHECK (Gender = 'm' OR Gender = 'f'),
Birthdate DATETIME NOT NULL,
Biography NVARCHAR(MAX)
)

INSERT INTO People 
([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
VALUES
('Ivan',' Dragon.jpg' , '1.80', '85.00', 'm', '07/08/1982', 'Hello'),
('Ivana',' Dragona.jpg' , '1.60', '83.00', 'f', '06/08/1982', 'Hello.'),
('Ivanaa',' Dragonaaa.jpg' , '1.50', '82.00', 'f', '04/08/1982', 'Hello. My Name is.'),
('Ivanca',' Dragon1.jpg' , '1.90', '90.00', 'm', '03/08/1982', 'Hell'),
('Ivani',' Dragon2.jpg' , '1.95', '95.00', 'm', '01/08/1982', 'Hel')