-- ============================================================
-- SQL Master
-- Lesson: SQL-R008 — JOIN Revision
-- ============================================================

-- Question 1
-- A:
INNER JOIN 
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- B:
LEFT JOIN to find customers without orders
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- C: Three-table
JOIN 
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    oi.product_id,
    oi.quantity
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id;

-- D: SELF
JOIN to find city-mates
SELECT
    c1.first_name AS customer1,
    c2.first_name AS customer2,
    c1.city
FROM customers c1
INNER JOIN customers c2 ON c1.city = c2.city AND c1.customer_id < c2.customer_id;

-- Question 2
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    pay.method AS payment_method
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
INNER JOIN payments pay ON o.order_id = pay.order_id
WHERE o.status = 'Completed' AND pay.status = 'Completed';

-- Question 3
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    p.category AS product_category,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name, p.category;

-- Question 4
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    COUNT(o.order_id) AS order_count,
    IFNULL(SUM(o.total_amount), 0) AS total_spent,
    IFNULL(AVG(o.total_amount), 0) AS average_order_value
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.city;
