SELECT
    I.total,
    C.firstName || ' ' || C.lastName AS customerName,
    C.country AS "Customer Country",
    E.firstName || ' ' || E.lastName AS salesAgentName
FROM
    Invoice I
JOIN
    Customer C ON I.customerId = C.customerId
JOIN
    Employee E ON C.supportRepId = E.employeeId;