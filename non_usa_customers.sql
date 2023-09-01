SELECT
    firstName || ' ' || lastName AS fullName,
    customerId,
    country
FROM
    Customer
WHERE
    country != 'USA';