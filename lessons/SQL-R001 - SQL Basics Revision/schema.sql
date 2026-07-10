-- ============================================================
-- SQL Master
-- Lesson: SQL-R001 — SQL Basics Revision
-- Schema: Retail Sales
-- Business Scenario: Revision
-- ============================================================

CREATE TABLE products (
    product_id   INT           PRIMARY KEY,
    product_name VARCHAR(100)  NOT NULL,
    brand        VARCHAR(50)   NOT NULL,
    category     VARCHAR(50)   NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    stock        INT           NOT NULL
);
CREATE TABLE customers (
    customer_id INT          PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100),
    phone       VARCHAR(20),
    city        VARCHAR(50)  NOT NULL
);
CREATE TABLE orders (
    order_id     INT           PRIMARY KEY,
    customer_id  INT           NOT NULL,
    order_date   DATE          NOT NULL,
    status       VARCHAR(20)   NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL
);
INSERT INTO products VALUES
(1,'Wireless Mouse','Logitech','Electronics',850.00,120),
(2,'USB Keyboard','HP','Electronics',1200.00,85),
(3,'Office Chair','Walton','Furniture',8500.00,30),
(4,'Notebook A5','Navana','Stationery',120.00,500),
(5,'Headphones','Sony','Electronics',2500.00,60);
INSERT INTO customers VALUES
(1,'Rahim','Uddin','rahim@email.com','01711-001','Dhaka'),
(2,'Fatema','Rahman','fatema@email.com',NULL,'Chittagong'),
(3,'Karim','Molla',NULL,'01911-003','Dhaka'),
(4,'Nasrin','Akter','nasrin@email.com','01611-004','Sylhet'),
(5,'Milon','Ahmed',NULL,NULL,'Rajshahi');
INSERT INTO orders VALUES
(1001,1,'2024-01-05','Completed',3500.00),
(1002,2,'2024-01-10','Completed',1200.00),
(1003,1,'2024-02-01','Pending',4800.00),
(1004,3,'2024-02-14','Completed',2200.00),
(1005,4,'2024-03-03','Cancelled',900.00);
