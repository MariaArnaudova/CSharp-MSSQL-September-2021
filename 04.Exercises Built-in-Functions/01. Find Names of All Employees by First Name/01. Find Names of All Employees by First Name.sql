SELECT FirstName,LastName
FROM Employees
WHERE FirstName LIKE 'SA%' 
--WHERE LEFT(FirstName,2) = 'SA%'
--WHERE SUBSTRING(FirstName, 1, 2) = 'SA%' 