CREATE PROC usp_GetTownsStartingWith (@somesign VARCHAR(5))
AS
    SELECT [Name] as Town
	  FROM Towns
	 WHERE [Name] LIKE @somesign +'%'

	 EXEC usp_GetTownsStartingWith 'b'