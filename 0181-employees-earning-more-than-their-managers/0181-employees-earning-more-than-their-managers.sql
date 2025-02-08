SELECT e.name as Employee
FROM Employee e
WHERE e.name IN (
    SELECT e.name
    FROM Employee m
    WHERE e.managerId = m.id
    AND e.salary > m.salary
);