SELECT
    employeeId,
    firstName || ' ' || lastName AS fullName,
    Title
FROM
    Employee
WHERE
    Title = 'Sales Support Agent';