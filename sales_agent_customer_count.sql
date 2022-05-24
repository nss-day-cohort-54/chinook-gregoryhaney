SELECT  COUNT(c.CustomerId) AS AssignedCustomers, 
        e.EmployeeId AS EmpId, 
        e.FirstName || " " || e.LastName AS EmpName        
FROM Employee AS e
LEFT JOIN Customer AS c
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;
