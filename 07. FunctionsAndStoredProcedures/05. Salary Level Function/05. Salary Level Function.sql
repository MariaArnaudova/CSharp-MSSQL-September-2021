SELECT LOWER(FirstName), dbo.ufn_GetSalaryLevel(Salary)
FROM Employees

GO

CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS  VARCHAR(10)
AS
BEGIN
  DECLARE @output VARCHAR(10) 	
         IF @salary < 30000	SET @output ='Low'
   	ELSE IF @salary >= 30000 AND @salary <= 50000 SET @output ='Average'
   	ELSE IF @salary > 5000 SET @output = 'High'
  RETURN @output	
END;