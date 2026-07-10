-- ============================================================
-- SQL Master
-- Lesson: SQL-004 — LIMIT or TOP
-- Schema: Retail Sales
-- Business Scenario: Top selling products
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    units_sold   INT           NOT NULL
);
INSERT INTO products VALUES
(1,  'Wireless Mouse',   'Logitech', 'Electronics', 850.00,  3200),
(2,  'USB Keyboard',     'HP',       'Electronics', 1200.00, 2100),
(3,  'Office Chair',     'Walton',   'Furniture',   8500.00,  450),
(4,  'Notebook A5',      'Navana',   'Stationery',   120.00, 8900),
(5,  'HDMI Cable',       'Sony',     'Electronics',  350.00, 5600),
(6,  'Desk Lamp',        'Philips',  'Electronics',  650.00, 1800),
(7,  'Sticky Notes',     'Navana',   'Stationery',    80.00, 7200),
(8,  'Marker Set',       'Artline',  'Stationery',    90.00, 4300),
(9,  'Filing Cabinet',   'Walton',   'Furniture',  12000.00,  120),
(10, 'Headphones',       'Sony',     'Electronics', 2500.00,  980),
(11, 'Pen Drive 32GB',   'Kingston', 'Electronics',  450.00, 6100),
(12, 'A4 Paper Ream',    'Navana',   'Stationery',   220.00, 9500);
