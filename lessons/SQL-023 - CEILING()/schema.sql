-- ============================================================
-- SQL Master
-- Lesson: SQL-023 — CEILING()
-- Schema: Retail Sales
-- Business Scenario: Rounded up prices
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    discount_pct DECIMAL(5,2)  NOT NULL
);
INSERT INTO products VALUES
(1,'Wireless Mouse', 'Logitech', 849.50, 5.00),
(2,'USB Keyboard',   'HP',      1199.99, 7.50),
(3,'Desk Lamp',      'Philips',  649.75, 3.00),
(4,'Notebook A5',    'Navana',   119.50,10.00),
(5,'HDMI Cable',     'Sony',     349.90, 5.00),
(6,'Marker Set',     'Artline',   89.25, 0.00),
(7,'Office Chair',   'Walton',  8499.00,15.00),
(8,'Headphones',     'Sony',    2499.50,12.50);
