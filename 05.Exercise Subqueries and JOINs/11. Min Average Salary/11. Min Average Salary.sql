  SELECT TOP(1) AVG(Salary) AS MinAverageSalary
        FROM Employees AS e
        JOIN Departments d ON d.DepartmentID = e.DepartmentID
    GROUP BY e.DepartmentID
    ORDER BY MinAverageSalary
