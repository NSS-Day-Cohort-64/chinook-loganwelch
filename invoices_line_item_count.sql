-- query to show all invoices for invoiceID and total number of line items on each invoice

SELECT
    InvoiceId,
    COUNT(*) AS "Total Line Items"
FROM
    InvoiceLine
GROUP BY
    InvoiceId;