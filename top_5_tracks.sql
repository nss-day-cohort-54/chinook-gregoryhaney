SELECT
        Name,
        PurchaseCount
FROM (
            SELECT 
                t.name,
                COUNT(t.trackid) AS PurchaseCount
            FROM InvoiceLine AS il
            JOIN Invoice AS i
                ON i.invoiceid = il.invoiceid
            JOIN Track AS t
                ON t.trackid = il.trackid
            GROUP BY t.trackid
)
WHERE PurchaseCount = ( 
            SELECT
                MAX(PurchaseCount) 
            FROM (
                SELECT 
                    t.name,
                    COUNT(t.trackid) AS PurchaseCount
                FROM InvoiceLine AS il
                JOIN Invoice AS i
                    ON i.invoiceid = il.invoiceid
                JOIN Track AS t
                    ON t.trackid = il.trackid
                GROUP BY t.trackid
            )
)