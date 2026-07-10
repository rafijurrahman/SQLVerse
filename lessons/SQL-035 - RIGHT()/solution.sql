-- ============================================================
-- SQL Master
-- Lesson: SQL-035 — RIGHT()
-- ============================================================

-- Question 1
SELECT
    RIGHT(employee_code, 3) AS "Seq Number"
FROM employees;

-- Question 2
SELECT
    employee_id,
    RIGHT(email, LENGTH(email) - LOCATE('@', email)) AS "Email Domain"
FROM employees;

-- Question 3
SELECT
    employee_id,
    first_name,
    RIGHT(phone, 4) AS "Last 4 Digits"
FROM employees;

-- Question 4
SELECT
    *
FROM employees
WHERE CAST(RIGHT(employee_code, 3) AS UNSIGNED) > 5;
