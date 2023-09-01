--query to show each invoice line item along with the name of
--the track that was purchased, and the name of the artist

SELECT
    IL.invoiceLineId AS "Invoice Line Item ID",
    T.name AS "Track Title",
    A.name AS "Artist Name"
FROM
    InvoiceLine IL
JOIN
    Track T ON IL.trackId = T.trackId
JOIN
    Album AL ON T.albumId = AL.albumId
JOIN
    Artist A ON AL.artistId = A.artistId;