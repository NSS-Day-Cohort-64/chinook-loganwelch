-- query to count the number of line items for each invoice in the InvoiceLine TABLE

SELECT
    invoiceId,
    COUNT(*) AS "Number of Line Items"
FROM
    InvoiceLine
GROUP BY
    invoiceId
ORDER BY
    invoiceId;