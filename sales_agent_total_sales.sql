-- query to show total sales made by each sales agent

SELECT
    E.firstName || ' ' || E.lastName AS "Employee Full Name",
    ROUND(SUM(I.total), 2) AS "Total Sales (All Time)"
FROM
    Employee E
LEFT JOIN
    Customer C ON E.employeeId = C.supportRepId
LEFT JOIN
    Invoice I ON C.customerId = I.customerId
GROUP BY
    "Employee Full Name"
ORDER BY
    "Total Sales (All Time)" DESC;