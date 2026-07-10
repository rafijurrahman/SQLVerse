-- ============================================================
-- SQL Master
-- Lesson: SQL-163 — Updating a VIEW
-- ============================================================

-- Question 1
CREATE OR REPLACE VIEW high_value_orders AS
SELECT
    *
FROM orders
WHERE total_amount > 5000;

-- Question 2
CREATE OR REPLACE VIEW high_value_orders AS
SELECT
    order_id,
    customer_id,
    order_date,
    status,
    total_amount,
    'High' AS value_tier
FROM orders
WHERE total_amount > 3000;

-- Question 3
CREATE OR REPLACE VIEW high_value_orders AS
SELECT
    *
FROM orders
WHERE total_amount > 5000;

SELECT
    *
FROM high_value_orders;

-- Question 4
CREATE OR REPLACE VIEW orders_with_tax AS
SELECT
    *,
    ROUND(total_amount * 1.15, 2) AS total_with_tax
FROM orders;

SELECT
    *
FROM orders_with_tax;
