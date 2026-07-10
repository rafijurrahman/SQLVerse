-- ============================================================
-- SQL Master
-- Lesson: SQL-107 — Joining the Same Table Twice
-- ============================================================

-- Question 1
SELECT
    e.employee_id,
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM employees AS e
LEFT JOIN employees AS m ON e.manager_id = m.employee_id;

-- Question 2
SELECT
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name,
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    e.department
FROM employees AS e
INNER JOIN employees AS m ON e.manager_id = m.employee_id;

-- Question 3
SELECT
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    e.salary AS employee_salary,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name,
    m.salary AS manager_salary
FROM employees AS e
LEFT JOIN employees AS m ON e.manager_id = m.employee_id;

-- Question 4
SELECT
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name,
    e.department
FROM employees AS e
INNER JOIN employees AS m ON e.manager_id = m.employee_id
WHERE e.department = m.department;
