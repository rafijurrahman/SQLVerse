-- ============================================================
-- SQL Master
-- Lesson: SQL-C005 — LEFT() vs RIGHT()
-- ============================================================

-- Question 1
SELECT
    LEFT(employee_code, 3)
FROM employees;

SELECT
    RIGHT(employee_code, 3)
FROM employees;

-- Question 2
SELECT
    LEFT(first_name, 2) AS "First 2",
    RIGHT(last_name, 2) AS "Last 2",
    CONCAT(LEFT(first_name, 2), RIGHT(last_name, 2)) AS "Code"
FROM employees;

-- Question 3
SELECT
    employee_id,
    CONCAT(LEFT(first_name, 3), RIGHT(employee_code, 3)) AS "Login ID"
FROM employees;

-- Question 4
SELECT
    LEFT(job_title, 6) AS "Title Start",
    RIGHT(job_title, 7) AS "Title END"
FROM employees
WHERE LEFT(job_title, 6) = 'Senior';
