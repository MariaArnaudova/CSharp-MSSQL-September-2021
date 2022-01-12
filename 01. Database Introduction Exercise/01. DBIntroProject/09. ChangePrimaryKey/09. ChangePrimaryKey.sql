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

ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC07B489DA4D

ALTER TABLE Users
ADD CONSTRAINT PK_IdUsername PRIMARY KEY(Id, UserName)