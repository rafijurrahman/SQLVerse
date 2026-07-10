-- ============================================================
-- SQL Master
-- Lesson: SQL-033 — TRIM()
-- ============================================================

-- Question 1
SELECT
    first_name,
    TRIM(first_name)
FROM employees;

-- Question 2
SELECT
    CONCAT(TRIM(first_name), ' ', TRIM(last_name)) AS "Clean Full Name"
FROM employees;

-- Question 3
SELECT
    employee_id,
    LENGTH(job_title) AS "Original Length",
    LENGTH(TRIM(job_title)) AS "Trimmed Length"
FROM employees;

-- Question 4
SELECT
    TRIM(UPPER(first_name)) AS "Cleaned Name",
    TRIM(LOWER(email)) AS "Cleaned Email"
FROM employees;
