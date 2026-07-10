-- ============================================================
-- SQL Master
-- Lesson: SQL-164 — Dropping a VIEW
-- ============================================================

-- Question 1
DROP VIEW IF EXISTS high_value_orders;

-- Question 2
CREATE VIEW temp_report AS
SELECT
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city;

SELECT
    *
FROM temp_report;

DROP VIEW IF EXISTS temp_report;

-- Question 3
DROP VIEW IF EXISTS quarterly_summary, temp_export, customer_report;

-- Question 4
-- Step 1: CREATE VIEW
CREATE VIEW active_customer_orders AS
SELECT
    o.order_id,
    o.customer_id,
    o.total_amount,
    o.status
FROM orders o
WHERE o.status = 'Completed';

-- Step 2:
SELECT
    
FROM it
SELECT
    *
FROM active_customer_orders;

-- Step 3: Create OR Replace WITH updates
CREATE OR REPLACE VIEW active_customer_orders AS
SELECT
    o.order_id,
    o.customer_id,
    o.total_amount,
    o.status
FROM orders o
WHERE o.status IN ('Completed', 'Shipped');

-- Step 4:
SELECT
    again
SELECT
    *
FROM active_customer_orders;

-- Step 5: Drop View
DROP VIEW IF EXISTS active_customer_orders;
