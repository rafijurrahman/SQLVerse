-- ============================================================
-- SQL Master
-- Lesson: SQL-002 — WHERE
-- Schema: Retail Sales
-- Business Scenario: Filter products
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
(2,  'USB Keyboard',     'HP',       'Electronics', 1200.00,  85, 1),
(3,  'Office Chair',     'Walton',   'Furniture',   8500.00,  30, 1),
(4,  'Notebook A5',      'Navana',   'Stationery',   120.00, 500, 1),
(5,  'HDMI Cable',       'Sony',     'Electronics',  350.00, 200, 0),
(6,  'Desk Lamp',        'Philips',  'Electronics',  650.00,  75, 1),
(7,  'Sticky Notes',     'Navana',   'Stationery',    80.00, 400, 0),
(8,  'Marker Set',       'Artline',  'Stationery',    90.00, 300, 1),
(9,  'Filing Cabinet',   'Walton',   'Furniture',  12000.00,  15, 0),
(10, 'Headphones',       'Sony',     'Electronics', 2500.00,  60, 1);
