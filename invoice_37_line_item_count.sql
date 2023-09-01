-- query to count the number of line items for invoice 37 in the InvoiceLine TABLE

SELECT
    COUNT(*) AS "Number of Line Items"
FROM
    InvoiceLine
WHERE
    invoiceId = 37;