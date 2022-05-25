SELECT
        ar.Name,
        COUNT(ar.ArtistId) AS NbrSold
FROM InvoiceLine AS l
JOIN Track AS t
    ON t.TrackId = l.TrackId
JOIN Album AS al
    ON al.AlbumId = t.AlbumId
JOIN Artist AS ar
    ON ar.ArtistId = al.ArtistId
GROUP BY ar.ArtistId
ORDER BY NbrSold DESC
LIMIT 3