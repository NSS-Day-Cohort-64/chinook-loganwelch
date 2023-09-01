--query to show the total number of invoices per country

SELECT
    BillingCountry AS "Country",
    COUNT(*) AS "Total Invoices"
FROM
    Invoice
GROUP BY
    BillingCountry
ORDER BY
    "Total Invoices" DESC;