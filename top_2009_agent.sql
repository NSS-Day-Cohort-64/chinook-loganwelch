-- query to show which sales agent made the most sales in 2009

WITH SalesByAgent AS (
    SELECT
        E.employeeId,
        E.firstName || ' ' || E.lastName AS "Sales Agent Name",
        SUM(I.total) AS "Total Sales in 2009"
    FROM
        Employee E
    JOIN
        Customer C ON E.employeeId = C.supportRepId
    JOIN
        Invoice I ON C.customerId = I.customerId
    WHERE
        strftime('%Y', I.invoiceDate) = '2009'
    GROUP BY
        E.employeeId
)
SELECT
    "Sales Agent Name",
    "Total Sales in 2009"
FROM
    SalesByAgent
WHERE
    "Total Sales in 2009" = (SELECT MAX("Total Sales in 2009") FROM SalesByAgent);