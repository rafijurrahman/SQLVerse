-- ============================================================
-- SQL Master
-- Lesson: SQL-096 — SELF JOIN
-- ============================================================

-- Question 1
SELECT
    e.first_name AS employee_name,
    m.first_name AS manager_name
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id;

-- Question 2
SELECT
    e.first_name AS employee_name,
    e.job_title AS employee_title,
    m.first_name AS manager_name,
    m.job_title AS manager_title
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id;

-- Question 3
SELECT
    e.first_name AS employee_name,
    e.department,
    e.salary,
    m.first_name AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

-- Question 4
SELECT
    e.first_name AS employee_name,
    e.salary AS employee_salary,
    m.first_name AS manager_name,
    m.salary AS manager_salary
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;
