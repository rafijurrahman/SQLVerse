-- ============================================================
-- SQL Master
-- Lesson: SQL-025 — ABS()
-- Schema: Retail Sales
-- Business Scenario: Profit difference
-- ============================================================

CREATE TABLE order_items (
    item_id      INT           PRIMARY KEY,
    order_id     INT           NOT NULL,
    product_name VARCHAR(100)  NOT NULL,
    quantity     INT           NOT NULL,
    unit_price   DECIMAL(10,2) NOT NULL,
    cost_price   DECIMAL(10,2) NOT NULL
);
INSERT INTO order_items VALUES
(1, 1001,'Wireless Mouse', 2, 850.00,  510.00),
(2, 1001,'Notebook A5',    5, 120.00,   60.00),
(3, 1002,'USB Keyboard',   1,1200.00,  720.00),
(4, 1002,'Desk Lamp',      1, 650.00,  390.00),
(5, 1003,'Headphones',     1,2500.00, 1500.00),
(6, 1003,'Marker Set',     3,  90.00,   45.00),
(7, 1004,'Office Chair',   1,8500.00, 5100.00),
(8, 1005,'Sticky Notes',  10,  80.00,   35.00),
(9, 1005,'HDMI Cable',     2, 350.00,  175.00),
(10,1006,'Study Table',    1,6000.00, 3600.00);
