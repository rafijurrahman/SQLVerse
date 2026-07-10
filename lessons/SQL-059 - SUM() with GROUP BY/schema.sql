-- ============================================================
-- SQL Master
-- Lesson: SQL-059 — SUM() with GROUP BY
-- Schema: Retail Sales
-- Business Scenario: Revenue by category
-- ============================================================

CREATE TABLE order_items (
    item_id      INT           PRIMARY KEY,
    order_id     INT           NOT NULL,
    store        VARCHAR(50)   NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    product_name VARCHAR(100)  NOT NULL,
    quantity     INT           NOT NULL,
    unit_price   DECIMAL(10,2) NOT NULL,
    cost_price   DECIMAL(10,2) NOT NULL
);
INSERT INTO order_items VALUES
(1,  1001,'Dhaka Store',   'Electronics','Wireless Mouse',   2, 850.00, 510.00),
(2,  1001,'Dhaka Store',   'Stationery', 'Notebook A5',      5, 120.00,  60.00),
(3,  1002,'CTG Store',     'Electronics','USB Keyboard',     1,1200.00, 720.00),
(4,  1002,'CTG Store',     'Electronics','Desk Lamp',        2, 650.00, 390.00),
(5,  1003,'Dhaka Store',   'Electronics','Headphones',       1,2500.00,1500.00),
(6,  1003,'Dhaka Store',   'Stationery', 'Marker Set',       3,  90.00,  45.00),
(7,  1004,'Sylhet Store',  'Furniture',  'Office Chair',     1,8500.00,5100.00),
(8,  1005,'Dhaka Store',   'Stationery', 'Sticky Notes',    10,  80.00,  35.00),
(9,  1005,'CTG Store',     'Electronics','HDMI Cable',       2, 350.00, 175.00),
(10, 1006,'Sylhet Store',  'Electronics','Wireless Mouse',   3, 850.00, 510.00),
(11, 1006,'Sylhet Store',  'Furniture',  'Study Table',      1,6000.00,3600.00),
(12, 1007,'CTG Store',     'Stationery', 'Highlighter Pack', 5, 150.00,  75.00),
(13, 1007,'Dhaka Store',   'Electronics','USB Keyboard',     2,1200.00, 720.00),
(14, 1008,'Dhaka Store',   'Furniture',  'Bookshelf',        1,4500.00,2700.00),
(15, 1008,'CTG Store',     'Electronics','Headphones',       1,2500.00,1500.00);
