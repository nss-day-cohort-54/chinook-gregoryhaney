SELECT  COUNT(pt.TrackId), 
        p.Name AS PlaylistName
FROM Playlist AS p
JOIN PlaylistTrack AS pt
    ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name;