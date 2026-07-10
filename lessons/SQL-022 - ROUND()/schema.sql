-- ============================================================
-- SQL Master
-- Lesson: SQL-022 — ROUND()
-- Schema: Retail Sales
-- Business Scenario: Rounded sales
-- ============================================================

CREATE TABLE order_items (
    item_id      INT           PRIMARY KEY,
    order_id     INT           NOT NULL,
    product_name VARCHAR(100)  NOT NULL,
    quantity     INT           NOT NULL,
    unit_price   DECIMAL(10,2) NOT NULL,
    discount_pct DECIMAL(5,2)  NOT NULL
);
INSERT INTO order_items VALUES
(1, 1001,'Wireless Mouse', 2, 850.00, 5.00),
(2, 1001,'Notebook A5',    5, 120.00,10.00),
(3, 1002,'USB Keyboard',   1,1200.00, 7.50),
(4, 1002,'Desk Lamp',      1, 650.00, 3.00),
(5, 1003,'Headphones',     1,2500.00,12.50),
(6, 1003,'Marker Set',     3,  90.00, 0.00),
(7, 1004,'Office Chair',   1,8500.00,15.00),
(8, 1005,'Sticky Notes',  10,  80.00, 0.00),
(9, 1005,'HDMI Cable',     2, 350.00, 5.00),
(10,1006,'Headphones',     2,2500.00,10.00);
