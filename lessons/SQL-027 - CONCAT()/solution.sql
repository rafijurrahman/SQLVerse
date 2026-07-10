-- ============================================================
-- SQL Master
-- Lesson: SQL-027 — CONCAT()
-- ============================================================

-- Question 1
SELECT
    CONCAT(first_name, ' ', last_name) AS "Full Name"
FROM employees;

-- Question 2
SELECT
    CONCAT(employee_code, ': ', first_name, ' ', last_name) AS "Display Name"
FROM employees;

-- Question 3
SELECT
    employee_id,
    CONCAT(first_name, ' ', last_name, ' (', department, ')') AS "Employee Info"
FROM employees;

-- Question 4
SELECT
    CONCAT(first_name, ' ', last_name, ' | ', job_title, ' | ', department) AS "Email Signature"
FROM employees
ORDER BY department;
