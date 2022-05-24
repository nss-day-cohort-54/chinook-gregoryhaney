SELECT  SUM(i.Total) AS TotalSales,
        i.BillingCountry AS Country
FROM Invoice as i
GROUP BY i.BillingCountry;