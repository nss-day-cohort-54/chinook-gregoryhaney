SELECT  MAX(TotalSales) AS SpendingLeader, 
        Country
FROM (
    SELECT  i.BillingCountry AS Country,
            SUM(i.Total) AS TotalSales
    FROM Invoice AS i
    GROUP BY i.BillingCountry
);
