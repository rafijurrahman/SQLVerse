-- ============================================================
-- SQL Master
-- Lesson: SQL-013 — Wildcard (%)
-- ============================================================

-- Question 1
SELECT
    *
FROM customers
WHERE first_name LIKE 'R%';

-- Question 2
SELECT
    *
FROM customers
WHERE first_name LIKE '%a';

-- Question 3
SELECT
    *
FROM customers
WHERE city LIKE 'Dh%';

-- Question 4
SELECT
    *
FROM customers
WHERE email LIKE '%shop.com%' AND (first_name LIKE 'R%' OR first_name LIKE 'S%');
