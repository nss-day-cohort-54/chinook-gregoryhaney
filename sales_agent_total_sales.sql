SELECT  e.FirstName || " " || 
        e.LastName AS EmpName, 
        SUM(i.Total) AS TotalSales
FROM Employee AS e
JOIN Customer AS c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId;