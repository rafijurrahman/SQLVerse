-- ============================================================
-- SQL Master
-- Lesson: SQL-018 — SUM()
-- Schema: Retail Sales
-- Business Scenario: Total sales
-- ============================================================

CREATE TABLE order_items (
    item_id      INT           PRIMARY KEY,
    order_id     INT           NOT NULL,
    product_name VARCHAR(100)  NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    quantity     INT           NOT NULL,
    unit_price   DECIMAL(10,2) NOT NULL,
    cost_price   DECIMAL(10,2) NOT NULL
);
INSERT INTO order_items VALUES
(1, 1001, 'Wireless Mouse',  'Electronics', 2, 850.00,  510.00),
(2, 1001, 'Notebook A5',     'Stationery',  5, 120.00,   60.00),
(3, 1002, 'USB Keyboard',    'Electronics', 1, 1200.00, 720.00),
(4, 1002, 'Desk Lamp',       'Electronics', 1, 650.00,  390.00),
(5, 1003, 'Headphones',      'Electronics', 1, 2500.00,1500.00),
(6, 1003, 'Marker Set',      'Stationery',  3,   90.00,  45.00),
(7, 1004, 'Office Chair',    'Furniture',   1, 8500.00,5100.00),
(8, 1005, 'Sticky Notes',    'Stationery', 10,   80.00,  35.00),
(9, 1005, 'HDMI Cable',      'Electronics', 2, 350.00,  175.00),
(10,1006, 'Wireless Mouse',  'Electronics', 3, 850.00,  510.00);
