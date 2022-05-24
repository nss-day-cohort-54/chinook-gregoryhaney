SELECT FirstName || " " || LastName AS Name, CustomerId, Country 
FROM Customer
WHERE Country != "USA";