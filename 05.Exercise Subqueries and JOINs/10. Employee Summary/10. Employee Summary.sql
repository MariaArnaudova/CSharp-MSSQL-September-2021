SELECT TOP(50) e.EmployeeID,
	           (e.FirstName + ' ' + e.LastName) AS	EmployeeName,
		       (mng.FirstName + ' ' + mng.LastName) ASManagerName,
		       (d.[Name]) AS DepartmentName
      FROM Employees AS e
      JOIN Employees AS	mng ON mng.EmployeeID = e.ManagerID
      JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
  ORDER BY EmployeeID

