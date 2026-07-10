-- ============================================================
-- SQL Master
-- Lesson: SQL-040 — LOCATE()
-- ============================================================

-- Question 1
SELECT
    LOCATE('@', email) AS "At Position"
FROM employees;

-- Question 2
SELECT
    employee_code,
    LOCATE('-', employee_code) AS "Dash Position"
FROM employees;

-- Question 3
SELECT
    employee_id,
    email
FROM employees
WHERE LOCATE('@company.com', email) > 0;

-- Question 4
SELECT
    employee_id,
    email,
    LOCATE('.', email, LOCATE('.', email) + 1) AS "Second Dot Position"
FROM employees;
