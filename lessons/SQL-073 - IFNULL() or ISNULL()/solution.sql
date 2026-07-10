-- ============================================================
-- SQL Master
-- Lesson: SQL-073 — IFNULL() or ISNULL()
-- ============================================================

-- Question 1
SELECT
    customer_id,
    first_name,
    IFNULL(phone, 'N/A') AS "Phone"
FROM customers;

-- Question 2
SELECT
    *,
    IFNULL(email, 'NOT Registered') AS "Email Status",
    IFNULL(phone, 'NOT Registered') AS "Phone Status"
FROM customers;

-- Question 3
SELECT
    first_name,
    last_name,
    IFNULL(email, 'NOT Provided') AS "Email",
    IFNULL(phone, 'NOT Provided') AS "Phone",
    IFNULL(city, 'Unknown') AS "City"
FROM customers;

-- Question 4
SELECT
    IFNULL(CONCAT(first_name, ' - ', email), CONCAT(first_name, ' (No Email)')) AS "Profile"
FROM customers;
