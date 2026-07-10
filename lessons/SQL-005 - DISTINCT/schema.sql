-- ============================================================
-- SQL Master
-- Lesson: SQL-005 — DISTINCT
-- Schema: Retail Sales
-- Business Scenario: Unique brands
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL
);
INSERT INTO products VALUES
(1,  'Wireless Mouse',    'Logitech', 'Electronics', 850.00),
(2,  'Gaming Mouse',      'Logitech', 'Electronics', 2200.00),
(3,  'USB Keyboard',      'HP',       'Electronics', 1200.00),
(4,  'Laser Printer',     'HP',       'Electronics', 18000.00),
(5,  'Office Chair',      'Walton',   'Furniture',   8500.00),
(6,  'Study Table',       'Walton',   'Furniture',   6000.00),
(7,  'Notebook A5',       'Navana',   'Stationery',   120.00),
(8,  'Sticky Notes',      'Navana',   'Stationery',    80.00),
(9,  'Marker Set',        'Artline',  'Stationery',    90.00),
(10, 'Highlighter Pack',  'Artline',  'Stationery',   150.00),
(11, 'Headphones',        'Sony',     'Electronics', 2500.00),
(12, 'Bluetooth Speaker', 'Sony',     'Electronics', 3800.00);
