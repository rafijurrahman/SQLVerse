-- ============================================================
-- SQL Master
-- Lesson: SQL-026 — MOD()
-- Schema: Retail Sales
-- Business Scenario: Remainder calculation
-- ============================================================

CREATE TABLE order_items (
    item_id      INT           PRIMARY KEY,
    order_id     INT           NOT NULL,
    product_name VARCHAR(100)  NOT NULL,
    quantity     INT           NOT NULL,
    unit_price   DECIMAL(10,2) NOT NULL,
    box_size     INT           NOT NULL
);
INSERT INTO order_items VALUES
(1, 1001,'Wireless Mouse', 7,  850.00, 3),
(2, 1001,'Notebook A5',   23,  120.00, 5),
(3, 1002,'USB Keyboard',   4, 1200.00, 2),
(4, 1002,'Desk Lamp',     10,  650.00, 4),
(5, 1003,'Headphones',     5, 2500.00, 2),
(6, 1003,'Marker Set',    17,   90.00, 6),
(7, 1004,'Sticky Notes',  31,   80.00,10),
(8, 1005,'HDMI Cable',     9,  350.00, 4),
(9, 1006,'Marker Set',    14,   90.00, 3),
(10,1007,'Notebook A5',   28,  120.00, 5);
