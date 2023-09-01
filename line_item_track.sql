--query to show each invoice line item, with the name of the track that was purchased

SELECT
    IL.invoiceLineId AS "Invoice Line Item ID",
    T.name AS "Track Name"
FROM
    InvoiceLine IL
JOIN
    Track T ON IL.trackId = T.trackId;