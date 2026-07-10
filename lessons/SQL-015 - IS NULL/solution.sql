-- ============================================================
-- SQL Master
-- Lesson: SQL-015 — IS NULL
-- ============================================================

-- Question 1
SELECT
    *
FROM customers
WHERE phone IS NULL;

-- Question 2
SELECT
    *
FROM customers
WHERE email IS NULL AND phone IS NULL;

-- Question 3
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone
FROM customers
WHERE email IS NULL OR phone IS NULL;

-- Question 4
SELECT
    COUNT(*)
FROM ( SELECT * FROM customers WHERE city IS NULL OR email IS NULL ) AS incomplete;
