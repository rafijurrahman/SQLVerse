-- ============================================================
-- SQL Master
-- Lesson: SQL-C011 — COALESCE() vs IFNULL()
-- ============================================================

-- Question 1
SELECT
    IFNULL(email, 'No Email')
FROM customers;

SELECT
    COALESCE(email, 'No Email')
FROM customers;

-- Question 2
SELECT
    COALESCE(email, phone, 'No Contact')
FROM customers;

SELECT
    IFNULL(email, IFNULL(phone, 'No Contact'))
FROM customers;

-- Question 3
SELECT
    customer_id,
    IFNULL(phone, 'N/A')
FROM customers;

SELECT
    customer_id,
    COALESCE(email, phone, 'No Contact')
FROM customers;

-- Question 4
SELECT
    IFNULL(email, 'none') AS "IFNULL Result",
    COALESCE(email, phone, 'none') AS "COALESCE Result"
FROM customers;
