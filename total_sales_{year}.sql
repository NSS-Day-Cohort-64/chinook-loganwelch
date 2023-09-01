-- query for the respective total sales for 2009 and 2011

SELECT
    SUBSTR(invoiceDate, 1, 4) AS "Year",
    SUM(total) AS "Total Sales"
FROM
    Invoice
WHERE
    SUBSTR(invoiceDate, 1, 4) IN ('2009', '2011')
GROUP BY
    "Year";

