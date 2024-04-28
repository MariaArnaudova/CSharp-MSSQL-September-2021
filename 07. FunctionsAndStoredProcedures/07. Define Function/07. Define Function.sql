
CREATE FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR(50), @word VARCHAR(50))

RETURNS BIT 
  BEGIN
    DECLARE @lenWord INT SET @lenWord = LEN(@word)
    DECLARE @counter INT SET @counter = 1;

        WHILE(@counter <= @lenWord)
		BEGIN
		DECLARE @currentChar CHAR(1) = SUBSTRING(@word, @counter,1 )
    	     IF CHARINDEX(@currentChar, @setOfLetters) = 0
    	     RETURN 0;  
    	     SET @counter += 1	
		END
		RETURN 1
   END

   GO

   SELECT dbo.ufn_IsWordComprised('sofia','oistmiahf')
GO
