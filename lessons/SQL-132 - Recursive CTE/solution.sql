-- ============================================================
-- SQL Master
-- Lesson: SQL-132 — Recursive CTE
-- ============================================================

-- Question 1
WITH RECURSIVE org_chart AS (
    SELECT
        employee_id,
        first_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT
        e.employee_id,
        e.first_name,
        e.manager_id,
        oc.level + 1
    FROM employees e
    INNER JOIN org_chart oc ON e.manager_id = oc.employee_id
)
SELECT
    employee_id,
    first_name,
    manager_id,
    level
FROM org_chart
ORDER BY level, employee_id;

-- Question 2
WITH RECURSIVE org_chart AS (
    SELECT
        employee_id,
        first_name,
        manager_id,
        CAST(first_name AS CHAR(200)) AS path
    FROM employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT
        e.employee_id,
        e.first_name,
        e.manager_id,
        CONCAT(oc.path, ' -> ', e.first_name) AS path
    FROM employees e
    INNER JOIN org_chart oc ON e.manager_id = oc.employee_id
)
SELECT
    employee_id,
    first_name,
    manager_id,
    path
FROM org_chart;

-- Question 3
WITH RECURSIVE org_chart AS (
    SELECT
        employee_id,
        first_name,
        last_name,
        department,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT
        e.employee_id,
        e.first_name,
        e.last_name,
        e.department,
        e.manager_id,
        oc.level + 1
    FROM employees e
    INNER JOIN org_chart oc ON e.manager_id = oc.employee_id
)
SELECT
    oc.level,
    CONCAT(oc.first_name, ' ', oc.last_name) AS employee_name,
    oc.department,
    CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM org_chart oc
LEFT JOIN employees m ON oc.manager_id = m.employee_id
ORDER BY oc.level, oc.employee_id;

-- Question 4
WITH RECURSIVE subordinates AS (
    SELECT
        employee_id,
        first_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id = 2
    UNION ALL
    SELECT
        e.employee_id,
        e.first_name,
        e.manager_id,
        s.level + 1
    FROM employees e
    INNER JOIN subordinates s ON e.manager_id = s.employee_id
)
SELECT
    employee_id,
    first_name,
    manager_id,
    level
FROM subordinates;
