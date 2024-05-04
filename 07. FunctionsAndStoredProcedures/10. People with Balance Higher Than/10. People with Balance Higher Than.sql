CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan (@number DECIMAL(10,2))
AS
   SELECT [FirstName],
          [LastName]
     FROM AccountHolders AS ah
     JOIN Accounts AS a ON ah.Id =a.AccountHolderId
 GROUP BY FirstName, LastName
   HAVING SUM(Balance) > @number