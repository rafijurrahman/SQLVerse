-- ============================================================
-- SQL Master
-- Lesson: SQL-C006 — POSITION() vs LOCATE()
-- ============================================================

-- Question 1
SELECT
    POSITION('@' IN email)
FROM employees;

SELECT
    LOCATE('@', email)
FROM employees;

-- Question 2
SELECT
    LOCATE('.', email),
    SUBSTRING(email, LOCATE('.', email))
FROM employees;

-- Question 3
SELECT
    employee_id,
    email
FROM employees
WHERE LOCATE('company', email, LOCATE('@', email)) > 0;

-- Question 4
SELECT
    email,
    POSITION('.' IN email) AS pos_result,
    LOCATE('.', email) AS loc_result
FROM employees;
