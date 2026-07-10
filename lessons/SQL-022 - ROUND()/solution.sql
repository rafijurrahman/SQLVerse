-- ============================================================
-- SQL Master
-- Lesson: SQL-022 — ROUND()
-- ============================================================

-- Question 1
SELECT
    ROUND(unit_price, 1)
FROM order_items;

-- Question 2
SELECT
    ROUND(unit_price * (1 - discount_pct/100), 2) AS "Discounted Price"
FROM order_items;

-- Question 3
SELECT
    order_id,
    ROUND(SUM(quantity * unit_price), 2) AS "Total Revenue"
FROM order_items
GROUP BY order_id;

-- Question 4
SELECT
    product_name,
    quantity,
    unit_price,
    discount_pct,
    ROUND(quantity * unit_price * (1 - discount_pct/100), 2) AS "Net Amount"
FROM order_items;
