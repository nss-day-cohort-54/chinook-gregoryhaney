SELECT
        m.Name AS MediaType,
        COUNT(m.MediaTypeId) AS NbrSold
FROM InvoiceLine AS l
JOIN Track AS t
    ON t.TrackId = l.TrackId
JOIN MediaType AS m
    ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.MediaTypeId
ORDER BY NbrSold DESC
LIMIT 1