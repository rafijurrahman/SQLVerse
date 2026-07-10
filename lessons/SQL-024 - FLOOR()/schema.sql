-- ============================================================
-- SQL Master
-- Lesson: SQL-024 — FLOOR()
-- Schema: Retail Sales
-- Business Scenario: Rounded down prices
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    tax_pct      DECIMAL(5,2)  NOT NULL
);
INSERT INTO products VALUES
(1,'Wireless Mouse', 'Logitech', 849.50, 15.00),
(2,'USB Keyboard',   'HP',      1199.99, 15.00),
(3,'Desk Lamp',      'Philips',  649.75,  7.50),
(4,'Notebook A5',    'Navana',   119.50,  5.00),
(5,'HDMI Cable',     'Sony',     349.90, 15.00),
(6,'Marker Set',     'Artline',   89.25,  5.00),
(7,'Office Chair',   'Walton',  8499.00,  7.50),
(8,'Headphones',     'Sony',    2499.50, 15.00);
