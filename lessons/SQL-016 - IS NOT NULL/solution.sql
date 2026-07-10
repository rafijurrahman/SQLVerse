-- ============================================================
-- SQL Master
-- Lesson: SQL-016 — IS NOT NULL
-- ============================================================

-- Question 1
SELECT
    *
FROM customers
WHERE phone IS NOT NULL;

-- Question 2
SELECT
    *
FROM customers
WHERE email IS NOT NULL AND phone IS NOT NULL;

-- Question 3
SELECT
    *
FROM customers
WHERE phone IS NOT NULL AND city IS NOT NULL;

-- Question 4
SELECT
    *
FROM customers
WHERE email IS NOT NULL AND phone IS NOT NULL AND city IS NOT NULL;

SELECT
    COUNT(*)
FROM customers
WHERE email IS NOT NULL AND phone IS NOT NULL AND city IS NOT NULL;
