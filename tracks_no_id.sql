SELECT  al.Title AS AlbumName,
        t.Name AS TrackName,
        m.Name AS MediaType,
        g.Name AS Genre
FROM Album AS al
JOIN Track AS t
    ON t.AlbumId = al.AlbumId
JOIN MediaType AS m
    ON m.MediaTypeId = t.MediaTypeId
JOIN Genre AS g
    ON g.GenreId = t.GenreId;