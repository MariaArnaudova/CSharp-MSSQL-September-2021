    SELECT e.EmployeeID, FirstName,	LastName, d.[Name] AS DepartmentName
      FROM Employees AS e
INNER JOIN Departments AS d ON e. DepartmentID = d.DepartmentID
     WHERE  d.[Name] = 'Sales'
  ORDER BY EmployeeID