CREATE TABLE Users
(
--•	Id – unique number for every user. There will be no more than 263-1 users. (Auto incremented)
--•	Username – unique identifier of the user will be no more than 30 characters (non Unicode). (Required)
--•	Password – password will be no longer than 26 characters (non Unicode). (Required)
--•	ProfilePicture – image with size up to 900 KB. 
--•	LastLoginTime
--•	IsDeleted – shows if the user deleted his/her profile. Possible states are true or false.
Id BIGINT PRIMARY KEY IDENTITY,
Username VARCHAR(30)  NOT NULL ,
[Password] VARCHAR(26)  NOT NULL,
ProfilePicture VARCHAR(MAX),
LastLoginTime DATETIME,
IsDeleted BIT,
)

INSERT INTO Users
(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES
('Koko', 'akhfie', 'Dragon.jpg', '07/12/2012', 1),
('Kokoi', 'sfaf', 'Dragon.jpg', '07/11/2012', 0),
('Hara', 'vpofig', 'Dragon.jpg', '07/10/2012', 1),
('Ksid', 'idgj', 'Dragon.jpg', '01/09/2012', 1),
('Kouyfso', 'dghf', 'Dragon.jpg', '07/08/2012', 0)




