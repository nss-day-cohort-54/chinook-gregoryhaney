SELECT e.FirstName, e.LastName, e.EmployeeId, e.Title
FROM Employee AS e
WHERE e.title LIKE "Sales%Agent";