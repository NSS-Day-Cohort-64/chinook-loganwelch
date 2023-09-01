SELECT
    E.firstName || ' ' || E.lastName AS salesAgentFullName,
    I.invoiceId
FROM
    Employee E
JOIN
    Customer C ON E.employeeId = C.supportRepId
JOIN
    Invoice I ON C.customerId = I.customerId
WHERE
    E.title = 'Sales Support Agent';