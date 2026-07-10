-- ============================================================
-- SQL Master
-- Lesson: SQL-169 — Unique Index
-- Schema: E Commerce
-- Business Scenario: Unique index
-- ============================================================

CREATE TABLE orders (
    order_id     INT           PRIMARY KEY,
    customer_id  INT           NOT NULL,
    order_date   DATE          NOT NULL,
    status       VARCHAR(20)   NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    email        VARCHAR(100)
);
INSERT INTO orders VALUES
(1001,1,'2024-01-05','Completed',3500.00,'r@shop.com'),
(1002,2,'2024-01-10','Completed',1200.00,'f@shop.com'),
(1003,1,'2024-02-01','Shipped',  4800.00,'r@shop.com'),
(1004,3,'2024-02-14','Completed',2200.00,'k@shop.com'),
(1005,2,'2024-03-03','Cancelled', 900.00,'f@shop.com'),
(1006,4,'2024-03-10','Completed',6100.00,'n@shop.com'),
(1007,1,'2024-04-02','Completed',1800.00,'r@shop.com'),
(1008,5,'2024-04-15','Pending',  3300.00,'m@shop.com'),
(1009,3,'2024-04-20','Completed',4500.00,'k@shop.com'),
(1010,4,'2024-05-01','Completed',2700.00,'n@shop.com');
