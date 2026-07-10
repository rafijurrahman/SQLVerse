-- ============================================================
-- SQL Master
-- Lesson: SQL-071 — COALESCE()
-- ============================================================

-- Question 1
SELECT
    customer_id,
    COALESCE(email, 'No Email Provided') AS "Email"
FROM customers;

-- Question 2
SELECT
    customer_id,
    COALESCE(email, phone, 'No Contact') AS "Best Contact"
FROM customers;

-- Question 3
SELECT
    customer_id,
    first_name,
    COALESCE(email, phone) AS "Primary Contact"
FROM customers;

-- Question 4
SELECT
    *,
    COALESCE(CONCAT('Email: ', email), CONCAT('Phone: ', phone), 'No Contact Available') AS "Contact Info"
FROM customers;
