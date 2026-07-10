-- ============================================================
-- SQL Master
-- Lesson: SQL-061 — MIN() with GROUP BY
-- Schema: Retail Sales
-- Business Scenario: Lowest product price by category
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
(1,'Sticky Notes',    'Navana',   'Stationery',   80.00,400),
(2,'Marker Set',      'Artline',  'Stationery',   90.00,300),
(3,'Notebook A5',     'Navana',   'Stationery',  120.00,500),
(4,'Highlighter',     'Artline',  'Stationery',  150.00,200),
(5,'HDMI Cable',      'Sony',     'Electronics', 350.00,200),
(6,'Desk Lamp',       'Philips',  'Electronics', 650.00, 75),
(7,'Wireless Mouse',  'Logitech', 'Electronics', 850.00,120),
(8,'USB Keyboard',    'HP',       'Electronics',1200.00, 85),
(9,'Headphones',      'Sony',     'Electronics',2500.00, 60),
(10,'Bookshelf',      'Walton',   'Furniture',  4500.00, 25),
(11,'Study Table',    'Walton',   'Furniture',  6000.00, 20),
(12,'Office Chair',   'Walton',   'Furniture',  8500.00, 30);
