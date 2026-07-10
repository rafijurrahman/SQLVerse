-- ============================================================
-- SQL Master
-- Lesson: SQL-108 — SELF JOIN Business Scenario
-- ============================================================

-- Question 1
SELECT
    e.first_name AS employee_name,
    m.first_name AS manager_name,
    mm.first_name AS grand_manager_name
FROM employees AS e
LEFT JOIN employees AS m ON e.manager_id = m.employee_id
LEFT JOIN employees AS mm ON m.manager_id = mm.employee_id;

-- Question 2
SELECT
    e.first_name,
    e.last_name,
    e.job_title,
    e.salary
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id
WHERE m.employee_id = 2;

-- Question 3
SELECT
    m.employee_id AS manager_id,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name,
    COUNT(e.employee_id) AS direct_reports_count
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id
GROUP BY m.employee_id, m.first_name, m.last_name;

-- Question 4
SELECT
    e1.first_name AS employee_name,
    e2.first_name AS peer_name,
    m.first_name AS manager_name
FROM employees e1
INNER JOIN employees e2 ON e1.manager_id = e2.manager_id
INNER JOIN employees m ON e1.manager_id = m.employee_id
WHERE e1.employee_id < e2.employee_id;
