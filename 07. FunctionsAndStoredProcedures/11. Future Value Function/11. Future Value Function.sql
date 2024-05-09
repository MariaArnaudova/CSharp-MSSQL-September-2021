CREATE FUNCTION ufn_CalculateFutureValue (@sum DECIMAL(10,2), @yearlyInterestRate FLOAT, @years INT)
RETURNS DECIMAL(15,4)
BEGIN
   DECLARE @result DECIMAL(15,4) 
   SET @result = @sum *  POWER((1 + @yearlyInterestRate), @years)
   RETURN @result
END
GO

SELECT dbo.ufn_CalculateFutureValue (1000, 011, 5)

