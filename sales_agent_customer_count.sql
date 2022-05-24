SELECT  COUNT(c.CustomerId) AS AssignedCustomers, 
        e.EmployeeId AS EmpId, 
        e.FirstName AS EmpFirst,
        e.LastName AS EmpLast
FROM Employee AS e
LEFT JOIN Customer AS c
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;
