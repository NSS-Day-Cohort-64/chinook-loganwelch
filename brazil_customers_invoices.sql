SELECT
    C.firstName || ' ' || C.lastName AS fullName,
    I.invoiceId,
    I.invoiceDate,
    I.billingCountry
FROM
    Customer C
JOIN
    Invoice I ON C.customerId = I.customerId
WHERE
    C.country = 'Brazil';