-- ============================================================
-- SQL Master
-- Lesson: SQL-C003 — COUNT() vs COUNT(star)
-- Schema: Retail Sales
-- Business Scenario: COUNT comparison
-- ============================================================

CREATE TABLE orders (
    order_id    INT           PRIMARY KEY,
    customer_id INT           NOT NULL,
    order_date  DATE          NOT NULL,
    status      VARCHAR(20)   NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    promo_code  VARCHAR(20)
);
INSERT INTO orders VALUES
(1001,1,'2024-01-05','Completed',3500.00,'SAVE10'),
(1002,2,'2024-01-10','Completed',1200.00, NULL),
(1003,1,'2024-01-15','Pending',  4800.00,'SAVE20'),
(1004,3,'2024-02-01','Completed',2200.00, NULL),
(1005,2,'2024-02-10','Cancelled', 900.00, NULL),
(1006,4,'2024-02-14','Completed',6100.00,'SAVE10'),
(1007,1,'2024-03-03','Completed',1800.00, NULL),
(1008,5,'2024-03-11','Pending',  3300.00, NULL),
(1009,3,'2024-03-20','Completed',4500.00,'PROMO5'),
(1010,4,'2024-04-02','Completed',2700.00, NULL);
