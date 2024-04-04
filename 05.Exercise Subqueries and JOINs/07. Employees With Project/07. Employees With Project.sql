
SELECT TOP (5) e.EmployeeID, e.FirstName, pr.[Name] ASProjectName
      FROM Employees AS e
 LEFT JOIN EmployeesProjects AS p ON e.EmployeeID = p.EmployeeID
 LEFT JOIN Projects AS pr ON p.ProjectID = pr.ProjectID
     WHERE pr.StartDate  > '2002-08-13' AND (pr.EndDate IS NULL)
  ORDER BY EmployeeID ASC