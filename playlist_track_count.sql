

SELECT
    P.name AS "Playlist name",
    COUNT(PT.trackId) AS "Total number of tracks on each playlist"
FROM
    Playlist P
LEFT JOIN
    PlaylistTrack PT ON P.playlistId = PT.playlistId
GROUP BY
    P.playlistId, P.name
ORDER BY
    "Total number of tracks on each playlist" DESC;