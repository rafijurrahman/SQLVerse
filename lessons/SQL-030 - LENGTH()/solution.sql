-- ============================================================
-- SQL Master
-- Lesson: SQL-030 — LENGTH()
-- ============================================================

-- Question 1
SELECT
    first_name,
    LENGTH(first_name) AS "Name Length"
FROM employees;

-- Question 2
SELECT
    employee_id,
    CONCAT(first_name, ' ', last_name) AS "Full Name",
    LENGTH(CONCAT(first_name, ' ', last_name)) AS "Full Name Length"
FROM employees;

-- Question 3
SELECT
    employee_id,
    email,
    LENGTH(email) AS "Email Length"
FROM employees
WHERE LENGTH(email) > 25;

-- Question 4
SELECT
    employee_id,
    first_name,
    LENGTH(first_name) AS "Name Len"
FROM employees
ORDER BY LENGTH(first_name) DESC, first_name ASC;
