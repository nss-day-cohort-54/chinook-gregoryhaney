SELECT SUM (i.Total)
FROM Invoice as i
WHERE i.InvoiceDate LIKE "2009%";