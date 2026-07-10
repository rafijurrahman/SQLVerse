-- ============================================================
-- SQL Master
-- Lesson: SQL-009 — NOT
-- Schema: Retail Sales
-- Business Scenario: Exclude products
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    stock        INT           NOT NULL
);
INSERT INTO products VALUES
(1,  'Wireless Mouse',   'Logitech', 'Electronics', 850.00,  120),
(2,  'USB Keyboard',     'HP',       'Electronics', 1200.00,  85),
(3,  'Office Chair',     'Walton',   'Furniture',   8500.00,  30),
(4,  'Notebook A5',      'Navana',   'Stationery',   120.00, 500),
(5,  'Study Table',      'Walton',   'Furniture',   6000.00,  20),
(6,  'Desk Lamp',        'Philips',  'Electronics',  650.00,  75),
(7,  'Sticky Notes',     'Navana',   'Stationery',    80.00, 400),
(8,  'Marker Set',       'Artline',  'Stationery',    90.00, 300),
(9,  'Filing Cabinet',   'Walton',   'Furniture',  12000.00,  15),
(10, 'Headphones',       'Sony',     'Electronics', 2500.00,  60);
