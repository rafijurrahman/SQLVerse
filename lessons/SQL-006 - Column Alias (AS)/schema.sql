-- ============================================================
-- SQL Master
-- Lesson: SQL-006 — Column Alias (AS)
-- Schema: Retail Sales
-- Business Scenario: Product aliases
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    cost_price   DECIMAL(10,2) NOT NULL,
    stock        INT           NOT NULL
);
INSERT INTO products VALUES
(1,  'Wireless Mouse',   'Logitech', 'Electronics', 850.00,  510.00, 120),
(2,  'USB Keyboard',     'HP',       'Electronics', 1200.00, 720.00,  85),
(3,  'Office Chair',     'Walton',   'Furniture',   8500.00, 5100.00, 30),
(4,  'Notebook A5',      'Navana',   'Stationery',   120.00,   60.00,500),
(5,  'HDMI Cable',       'Sony',     'Electronics',  350.00,  175.00,200),
(6,  'Desk Lamp',        'Philips',  'Electronics',  650.00,  390.00, 75),
(7,  'Sticky Notes',     'Navana',   'Stationery',    80.00,   35.00,400),
(8,  'Headphones',       'Sony',     'Electronics', 2500.00, 1500.00, 60);
