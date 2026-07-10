-- ============================================================
-- SQL Master
-- Lesson: SQL-C019 — LEFT JOIN vs NOT EXISTS
-- ============================================================

-- Question 1
-- A
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- B
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );

-- Question 2
--
LEFT JOIN scans AND returns NULL for non-matches
SELECT
    c.customer_id,
    c.first_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- NOT EXISTS stops at first match (semi-JOIN optimization)
SELECT
    c.customer_id,
    c.first_name
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id );

-- Question 3
-- A:
LEFT JOIN status Completed IS NULL
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.status = 'Completed'
WHERE o.order_id IS NULL;

-- B: NOT EXISTS
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
WHERE NOT EXISTS ( SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id AND o.status = 'Completed' );

-- Question 4
--
LEFT JOIN approach
SELECT
    p.product_id,
    p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.item_id IS NULL;

-- NOT EXISTS approach
SELECT
    p.product_id,
    p.product_name
FROM products p
WHERE NOT EXISTS ( SELECT 1 FROM order_items oi WHERE oi.product_id = p.product_id );
