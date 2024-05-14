CREATE FUNCTION ufn_CashInUsersGames(@gameName VARCHAR(50))
RETURNS TABLE
AS
RETURN(SELECT SUM(k.TotalCash) AS TotalCash
         FROM
       	    (SELECT Cash AS TotalCash, 
       	            ROW_NUMBER() OVER(ORDER BY Cash DESC) AS RowNumber
       	       FROM Games AS g
       	       JOIN UsersGames AS us ON us.GameId = g.Id
       	      WHERE [Name] = @gameName) AS k
        WHERE k.RowNumber % 2 = 1)
GO

SELECT * FROM ufn_CashInUsersGames('Lisbon')