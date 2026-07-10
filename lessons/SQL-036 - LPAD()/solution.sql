-- ============================================================
-- SQL Master
-- Lesson: SQL-036 — LPAD()
-- ============================================================

-- Question 1
SELECT
    LPAD(employee_id, 5, '0') AS "Padded ID"
FROM employees;

-- Question 2
SELECT
    LPAD(RIGHT(employee_code, 3), 4, '0') AS "Padded Seq"
FROM employees;

-- Question 3
SELECT
    employee_id,
    first_name,
    LPAD(CAST(employee_id AS CHAR), 6, '0') AS "Payroll ID"
FROM employees;

-- Question 4
SELECT
    CONCAT(LEFT(department, 2), '-', LPAD(RIGHT(employee_code, 3), 4, '0')) AS "Badge Number"
FROM employees;
