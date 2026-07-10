-- ============================================================
-- SQL Master
-- Lesson: SQL-034 — LEFT()
-- ============================================================

-- Question 1
SELECT
    LEFT(first_name, 3) AS "Short Name"
FROM employees;

-- Question 2
SELECT
    employee_id,
    department,
    LEFT(department, 3) AS "Dept Code"
FROM employees;

-- Question 3
SELECT
    UPPER(CONCAT(LEFT(first_name, 2), LEFT(last_name, 2))) AS "Short Code"
FROM employees;

-- Question 4
SELECT
    employee_id,
    employee_code,
    LEFT(employee_code, 3) AS "Prefix"
FROM employees
WHERE LEFT(employee_code, 3) != 'EMP';
