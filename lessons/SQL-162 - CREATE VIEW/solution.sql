-- ============================================================
-- SQL Master
-- Lesson: SQL-162 — CREATE VIEW
-- ============================================================

-- Question 1
CREATE VIEW dhaka_customers AS
SELECT
    *
FROM customers
WHERE city = 'Dhaka';

SELECT
    *
FROM dhaka_customers;

-- Question 2
CREATE VIEW high_value_orders AS
SELECT
    *
FROM orders
WHERE total_amount > 3000;

SELECT
    *
FROM high_value_orders
WHERE status = 'Completed';

-- Question 3
CREATE VIEW sales_dashboard AS
SELECT
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer,
    o.total_amount,
    o.status,
    o.order_date,
    c.city
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

SELECT
    *
FROM sales_dashboard
WHERE status = 'Completed' AND city = 'Dhaka';

-- Question 4
CREATE VIEW premium_customers AS
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.total_amount) > 5000;

CREATE VIEW recent_orders AS
SELECT
    *
FROM orders
WHERE order_date >= '2024-02-01';

SELECT
    *
FROM premium_customers;

SELECT
    *
FROM recent_orders;
