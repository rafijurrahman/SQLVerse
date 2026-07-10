-- ============================================================
-- SQL Master
-- Lesson: SQL-R013 — VIEW Revision
-- ============================================================

-- Question 1
-- A: CREATE VIEW
CREATE VIEW customer_order_summary AS
SELECT
    customer_id,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- B:
SELECT
    
SELECT
    *
FROM customer_order_summary;

-- C: CREATE OR REPLACE VIEW
CREATE OR REPLACE VIEW customer_order_summary AS
SELECT
    customer_id,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_spent,
    AVG(total_amount) AS avg_amount
FROM orders
GROUP BY customer_id;

-- D: DROP VIEW
DROP VIEW IF EXISTS customer_order_summary;

-- Question 2
CREATE VIEW complex_customer_view AS
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount,
    (
    SELECT
        COUNT(*)
    FROM orders o2
    WHERE o2.customer_id = c.customer_id
) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT
    *
FROM complex_customer_view
WHERE order_count > 1
ORDER BY total_amount DESC;

-- Question 3
-- A: active_customers view
CREATE VIEW active_customers AS
SELECT DISTINCT
    c.*
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- B: monthly_revenue view
CREATE VIEW monthly_revenue AS
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS total_rev
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');

SELECT
    *
FROM active_customers;

SELECT
    *
FROM monthly_revenue;

-- Question 4
CREATE VIEW orders_ranked AS
SELECT
    order_id,
    customer_id,
    order_date,
    status,
    total_amount,
    RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS spending_rank
FROM orders;

SELECT
    *
FROM orders_ranked
WHERE spending_rank = 1;
