-- ============================================================
-- SQL Master
-- Lesson: SQL-039 — POSITION()
-- ============================================================

-- Question 1
SELECT
    POSITION('@' IN email) AS "At Position"
FROM employees;

-- Question 2
SELECT
    POSITION('.' IN first_name) AS "Dot Position"
FROM employees;

-- Question 3
SELECT
    employee_id,
    email,
    POSITION('@' IN email) AS "Domain Start"
FROM employees;

-- Question 4
SELECT
    employee_id,
    SUBSTRING(email, 1, POSITION('@' IN email) - 1) AS "Username"
FROM employees;
