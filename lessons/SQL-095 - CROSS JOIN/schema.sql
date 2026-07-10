-- ============================================================
-- SQL Master
-- Lesson: SQL-095 — CROSS JOIN
-- Schema: E Commerce
-- Business Scenario: Cross join
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL
);
CREATE TABLE stores (
    store_id   INT         PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    city       VARCHAR(50)  NOT NULL,
    region     VARCHAR(50)  NOT NULL
);
INSERT INTO products VALUES
(1,'Wireless Mouse', 'Electronics', 850.00),
(2,'USB Keyboard',   'Electronics',1200.00),
(3,'Notebook A5',    'Stationery',  120.00);
INSERT INTO stores VALUES
(1,'Dhaka Main Store',    'Dhaka',      'Central'),
(2,'Chittagong Store',    'Chittagong', 'South'),
(3,'Sylhet Outlet',       'Sylhet',     'North');
