-- ============================================================
-- SQL Master
-- Lesson: SQL-C031 — VIEW vs TABLE
-- ============================================================

-- Question 1
SELECT
    *
FROM orders;

CREATE VIEW order_view AS
SELECT
    *
FROM orders;

SELECT
    *
FROM order_view;

-- Question 2
INSERT INTO orders VALUES (1011, 1, '2024-05-10', 'Pending', 2500.00);

SELECT
    *
FROM order_view;

-- Question 3
CREATE VIEW completed_only AS
SELECT
    *
FROM orders
WHERE status = 'Completed';

SELECT
    *
FROM completed_only;

-- Question 4
CREATE VIEW public_orders AS
SELECT
    order_id,
    status,
    total_amount
FROM orders;

SELECT
    *
FROM public_orders;
