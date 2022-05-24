SELECT i.InvoiceLineId, t.Name AS TrackName, ar.Name AS ArtistName
FROM InvoiceLine AS i
    JOIN Track AS t
        ON i.TrackId = t.TrackId
    JOIN Album AS al
        on t.AlbumId = al.AlbumId
    JOIN Artist AS ar
        ON al.ArtistId = ar.ArtistId;