--query to show all tracks but display no IDs

SELECT
    AL.title AS "Album Name",
    MT.name AS "Media Type",
    G.name AS "Genre"
FROM
    Track T
JOIN
    Album AL ON T.albumId = AL.albumId
JOIN
    MediaType MT ON T.mediaTypeId = MT.mediaTypeId
JOIN
    Genre G ON T.genreId = G.genreId;