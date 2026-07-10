-- ============================================================
-- SQL Master
-- Lesson: SQL-109 — Finding Missing Records using LEFT JOIN
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Question 2
SELECT
    p.product_id,
    p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- Question 3
SELECT
    c.first_name,
    c.last_name,
    c.email,
    c.city,
    c.joined_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Question 4
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    joined_date
FROM customers
WHERE customer_id NOT IN ( SELECT customer_id FROM orders WHERE customer_id IS NOT NULL );
