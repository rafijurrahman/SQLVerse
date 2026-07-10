-- ============================================================
-- SQL Master
-- Lesson: SQL-C003 — COUNT() vs COUNT(star)
-- ============================================================

-- Question 1
-- (A) Total rows IN orders table
SELECT
    COUNT(*)
FROM orders;

-- (B) Non-NULL VALUES IN promo_code
SELECT
    COUNT(promo_code)
FROM orders;

-- Explanation:
-- COUNT(*) counts every row IN the table, regardless of whether any column VALUES are NULL. It returns 10.
-- COUNT(promo_code) counts only rows
WHERE the promo_code column IS NOT NULL. Since some orders do NOT have promo codes (they are NULL), it returns 4.;

-- Question 2
SELECT
    status,
    COUNT(*) AS order_count
FROM orders
GROUP BY status;

-- Question 3
-- (A) Total orders
SELECT
    COUNT(*) AS total_orders
FROM orders;

-- (B) Orders WITH promo code
SELECT
    COUNT(promo_code) AS promo_orders
FROM orders;

-- Question 4
SELECT
    status,
    COUNT(*) AS total_orders,
    COUNT(promo_code) AS promo_orders
FROM orders
GROUP BY status;
