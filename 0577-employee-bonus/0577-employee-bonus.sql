SELECT a.name, b.bonus
FROM (
    SELECT empId, name
    FROM employee
    WHERE empId NOT IN (
        SELECT empId
        FROM bonus
        WHERE bonus >= 1000
    )
) a
LEFT OUTER JOIN bonus b
ON a.empId = b.empId;