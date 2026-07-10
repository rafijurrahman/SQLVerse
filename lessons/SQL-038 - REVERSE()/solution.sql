-- ============================================================
-- SQL Master
-- Lesson: SQL-038 — REVERSE()
-- ============================================================

-- Question 1
SELECT
    REVERSE(first_name) AS "Reversed Name"
FROM employees;

-- Question 2
SELECT
    employee_id,
    employee_code,
    REVERSE(employee_code) AS "Reversed Code"
FROM employees;

-- Question 3
SELECT
    employee_id,
    first_name,
    LOWER(REVERSE(first_name)) AS "Temp Password"
FROM employees;

-- Question 4
SELECT
    *
FROM employees
WHERE first_name = REVERSE(first_name);
