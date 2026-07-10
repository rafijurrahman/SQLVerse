-- ============================================================
-- SQL Master
-- Lesson: SQL-029 — LOWER()
-- ============================================================

-- Question 1
SELECT
    LOWER(email)
FROM employees;

-- Question 2
SELECT
    employee_id,
    LOWER(first_name) AS "first",
    LOWER(last_name) AS "last",
    LOWER(email) AS "email"
FROM employees;

-- Question 3
SELECT
    employee_id,
    LOWER(email) AS "Normalized Email"
FROM employees;

-- Question 4
SELECT
    first_name,
    job_title,
    LOWER(department) AS "dept_key"
FROM employees
WHERE LOWER(department) IN ('hr', 'it', 'finance')
ORDER BY dept_key;
