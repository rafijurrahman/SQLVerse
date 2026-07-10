-- ============================================================
-- SQL Master
-- Lesson: SQL-026 — MOD()
-- ============================================================

-- Question 1
SELECT
    MOD(quantity, box_size) AS "Leftover Units"
FROM order_items;

-- Question 2
SELECT
    *
FROM order_items
WHERE MOD(quantity, box_size) = 0;

-- Question 3
SELECT
    product_name,
    quantity,
    box_size,
    MOD(quantity, box_size) AS "Remainder"
FROM order_items
WHERE MOD(quantity, box_size) > 0;

-- Question 4
SELECT
    item_id,
    order_id,
    product_name,
    quantity
FROM order_items
WHERE MOD(order_id, 2) = 0;
