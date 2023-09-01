SELECT
    customerId,
    firstName || ' ' || lastName AS fullName
FROM
    Customer
WHERE
    country = 'Brazil';