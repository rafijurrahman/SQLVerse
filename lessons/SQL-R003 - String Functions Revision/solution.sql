-- ============================================================
-- SQL Master
-- Lesson: SQL-R003 — String Functions Revision
-- ============================================================

-- Question 1
SELECT
    UPPER(first_name) AS "First (Upper)",
    LOWER(last_name) AS "Last (Lower)",
    LENGTH(email) AS "Email Length"
FROM employees;

-- Question 2
SELECT
    CONCAT(first_name, ' ', last_name) AS "Full Name",
    LEFT(employee_code, 3) AS "Prefix",
    RIGHT(employee_code, 3) AS "Seq",
    SUBSTRING(email, 1, LOCATE('@', email) - 1) AS "Username"
FROM employees;

-- Question 3
SELECT
    employee_id,
    TRIM(UPPER(CONCAT(first_name, ' ', last_name))) AS "Cleaned Name",
    LOWER(REPLACE(email, '@company.com', '@corp.com')) AS "New Email",
    LPAD(CAST(employee_id AS CHAR), 5, '0') AS "Padded ID"
FROM employees;

-- Question 4
SELECT
    CONCAT(first_name, ' ', last_name) AS "Full Name",
    LENGTH(CONCAT(first_name, ' ', last_name)) AS name_length
FROM employees
WHERE LENGTH(CONCAT(first_name, ' ', last_name)) > 12
ORDER BY name_length DESC;
