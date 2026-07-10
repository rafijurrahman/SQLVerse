-- ============================================================
-- SQL Master
-- Lesson: SQL-007 — AND
-- Schema: Retail Sales
-- Business Scenario: Multi condition filtering
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    stock        INT           NOT NULL,
    is_active    INT           NOT NULL
);
INSERT INTO products VALUES
(1,  'Wireless Mouse',   'Logitech', 'Electronics', 850.00,  120, 1),
(2,  'Gaming Mouse',     'Logitech', 'Electronics', 2200.00,  40, 1),
(3,  'USB Keyboard',     'HP',       'Electronics', 1200.00,  85, 1),
(4,  'Laser Printer',    'HP',       'Electronics',18000.00,  10, 0),
(5,  'Office Chair',     'Walton',   'Furniture',   8500.00,  30, 1),
(6,  'Study Table',      'Walton',   'Furniture',   6000.00,   0, 0),
(7,  'Notebook A5',      'Navana',   'Stationery',   120.00, 500, 1),
(8,  'Sticky Notes',     'Navana',   'Stationery',    80.00, 400, 1),
(9,  'Marker Set',       'Artline',  'Stationery',    90.00, 300, 0),
(10, 'Headphones',       'Sony',     'Electronics', 2500.00,  60, 1);
