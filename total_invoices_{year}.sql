SELECT
    COUNT(*) AS "Total Invoices",
    SUBSTR(invoiceDate, 1, 4) AS "Year"
FROM
    Invoice
WHERE
    SUBSTR(invoiceDate, 1, 4) IN ('2009', '2011')
GROUP BY
    "Year";