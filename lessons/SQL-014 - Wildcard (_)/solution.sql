-- ============================================================
-- SQL Master
-- Lesson: SQL-014 — Wildcard (_)
-- ============================================================

-- Question 1
SELECT
    *
FROM customers
WHERE first_name LIKE '____';

-- Question 2
SELECT
    *
FROM customers
WHERE first_name LIKE 'R___';

-- Question 3
SELECT
    *
FROM customers
WHERE first_name LIKE '__';

-- Question 4
SELECT
    first_name,
    last_name,
    city
FROM customers
WHERE first_name LIKE '___a';
