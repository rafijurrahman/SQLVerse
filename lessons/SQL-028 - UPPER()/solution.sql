-- ============================================================
-- SQL Master
-- Lesson: SQL-028 — UPPER()
-- ============================================================

-- Question 1
SELECT
    UPPER(first_name)
FROM employees;

-- Question 2
SELECT
    employee_id,
    UPPER(first_name) AS "First Name",
    UPPER(last_name) AS "Last Name",
    department
FROM employees;

-- Question 3
SELECT
    employee_id,
    UPPER(job_title) AS "Official Title"
FROM employees;

-- Question 4
SELECT
    UPPER(CONCAT(first_name, ' ', last_name)) AS "FULL NAME"
FROM employees
WHERE department IN ('IT', 'Finance');
