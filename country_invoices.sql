SELECT COUNT(i.InvoiceId), i.BillingCountry
FROM Invoice AS i
GROUP BY i.BillingCountry;