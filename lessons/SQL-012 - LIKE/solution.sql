-- ============================================================
-- SQL Master
-- Lesson: SQL-012 — LIKE
-- ============================================================

-- Question 1
SELECT
    *
FROM customers
WHERE last_name LIKE 'Rahman';

-- Question 2
SELECT
    *
FROM customers
WHERE email LIKE '%rahman%';

-- Question 3
SELECT
    *
FROM customers
WHERE city LIKE '%Dha%';

-- Question 4
SELECT
    first_name,
    last_name,
    email,
    city
FROM customers
WHERE first_name LIKE '%Rah%' OR last_name LIKE '%Rah%';
