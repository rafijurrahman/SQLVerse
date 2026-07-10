-- ============================================================
-- SQL Master
-- Lesson: SQL-037 — RPAD()
-- ============================================================

-- Question 1
SELECT
    RPAD(first_name, 15, '.') AS "Padded Name"
FROM employees;

-- Question 2
SELECT
    CONCAT(RPAD(department, 20, ' '), COUNT(*)) AS "Department Report"
FROM employees
GROUP BY department;

-- Question 3
SELECT
    RPAD(first_name, 10, ' ') AS "First",
    RPAD(last_name, 10, ' ') AS "Last",
    RPAD(department, 12, ' ') AS "Dept"
FROM employees;

-- Question 4
SELECT
    RPAD(CONCAT(first_name, ' ', last_name), 25, '-') AS "Name Banner"
FROM employees
ORDER BY RPAD(CONCAT(first_name, ' ', last_name), 25, '-');
