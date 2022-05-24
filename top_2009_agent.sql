SELECT  MAX(TotalSales) AS SalesLeader, 
        First, 
        Last
FROM (
    SELECT  e.FirstName AS First,
            e.LastName AS Last,
            SUM(i.Total) AS TotalSales
    FROM Employee AS e
    JOIN Customer AS c
        ON e.EmployeeId = c.SupportRepId
    JOIN Invoice AS i
        ON c.CustomerId = i.CustomerId
    WHERE i.InvoiceDate LIKE "2009%"
    GROUP BY e.EmployeeId
);
