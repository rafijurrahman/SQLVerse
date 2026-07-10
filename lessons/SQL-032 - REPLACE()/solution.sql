-- ============================================================
-- SQL Master
-- Lesson: SQL-032 — REPLACE()
-- ============================================================

-- Question 1
SELECT
    REPLACE(job_title, 'Manager', 'LEAD') AS "Updated Title"
FROM employees;

-- Question 2
SELECT
    employee_id,
    REPLACE(email, '@company.com', '@corp.com') AS "New Email"
FROM employees;

-- Question 3
SELECT
    employee_id,
    job_title,
    REPLACE(job_title, 'Executive', 'Specialist') AS "New Title"
FROM employees;

-- Question 4
SELECT
    LOWER(REPLACE(employee_code, '-', '/')) AS "Formatted Code"
FROM employees;
