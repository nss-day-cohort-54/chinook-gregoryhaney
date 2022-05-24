SELECT c.FirstName || " " || c.LastName AS CustName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer AS c
JOIN Invoice AS i
on i.CustomerId = c.CustomerId
WHERE Country = "Brazil";