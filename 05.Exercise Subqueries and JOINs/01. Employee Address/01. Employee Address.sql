SELECT TOP(5) EmployeeId, JobTitle, e.AddressId, AddressText
         FROM Employees AS e
   INNER JOIN Addresses AS a ON e.AddressID = a.AddressID
     ORDER BY e.AddressID ASC