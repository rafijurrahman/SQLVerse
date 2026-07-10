-- ============================================================
-- SQL Master
-- Lesson: SQL-101 — JOIN with Aggregate Functions
-- ============================================================

-- Question 1
SELECT
    o.order_id,
    SUM(oi.quantity * oi.unit_price) AS "Order Total"
FROM orders o
INNER JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;

-- Question 2
SELECT
    o.order_id,
    COUNT(oi.item_id) AS "Item Count",
    SUM(oi.quantity) AS "Total Units",
    SUM(oi.quantity * oi.unit_price) AS "Revenue"
FROM orders o
INNER JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;

-- Question 3
SELECT
    o.order_id,
    o.order_date,
    o.status,
    COUNT(oi.item_id) AS "Product Lines",
    SUM(oi.quantity * oi.unit_price) AS "Total Revenue"
FROM orders o
INNER JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
ORDER BY SUM(oi.quantity * oi.unit_price) DESC;

-- Question 4
SELECT
    c.first_name,
    c.last_name,
    COUNT(DISTINCT o.order_id) AS "Total Orders",
    COUNT(oi.item_id) AS "Total Product Lines",
    COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS "Total Revenue"
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id
ORDER BY COALESCE(SUM(oi.quantity * oi.unit_price), 0) DESC;
