SELECT  i.InvoiceID,
        COUNT(l.InvoiceLineId) AS LineItemCount
FROM Invoice AS i
JOIN InvoiceLine AS l
    ON i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId;