SELECT  Total, 
        CustCountry,
        CustomerFirst, 
        CustomerLast, 
        e.FirstName AS AgentFirst, 
        e.LastName AS AgentLast
FROM
(
    SELECT  i.InvoiceId,
            i.Total,
            c.Country AS CustCountry,
            c.FirstName AS CustomerFirst,
            c.LastName AS CustomerLast,            
            c.SupportRepId
    FROM Invoice as i
    JOIN Customer as c
    ON i.CustomerId = c.CustomerId
)
JOIN Employee AS e
ON SupportRepId = e.EmployeeId;



