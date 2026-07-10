-- ============================================================
-- SQL Master
-- Lesson: SQL-031 — SUBSTRING()
-- ============================================================

-- Question 1
SELECT
    SUBSTRING(first_name, 1, 3) AS "Name Code"
FROM employees;

-- Question 2
SELECT
    SUBSTRING(employee_code, 5, 3) AS "ID Number"
FROM employees;

-- Question 3
SELECT
    employee_id,
    SUBSTRING(email, 1, LOCATE('@', email) - 1) AS "Username"
FROM employees;

-- Question 4
SELECT
    CONCAT(SUBSTRING(department, 1, 3), '-', YEAR(hire_date)) AS "Dept Year Code"
FROM employees;
