SELECT c.FirstName || " " || c.LastName AS Name, c.CustomerId, c.Country 
FROM Customer as c
WHERE c.Country = "Brazil";