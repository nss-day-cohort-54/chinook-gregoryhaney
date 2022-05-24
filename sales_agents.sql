SELECT e.FirstName || " " || e.LastName AS EmpName, e.EmployeeId, e.Title
FROM Employee AS e
WHERE e.title LIKE "Sales%Agent";