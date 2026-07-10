-- ============================================================
-- SQL Master
-- Lesson: SQL-W010 — SQL Query Optimization Workflow
-- Schema: E Commerce
-- Business Scenario: Step-by-step query optimization workflow
-- ============================================================

CREATE TABLE customers (
    customer_id INT         PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50) NOT NULL,
    city        VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    order_id     INT           PRIMARY KEY,
    customer_id  INT           NOT NULL,
    order_date   DATE          NOT NULL,
    status       VARCHAR(20)   NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers VALUES
(1,'Rahim', 'Uddin', 'Dhaka'),
(2,'Fatema','Begum', 'Chittagong'),
(3,'Karim', 'Molla', 'Dhaka'),
(4,'Nasrin','Akter', 'Sylhet'),
(5,'Milon', 'Ahmed', 'Rajshahi');

INSERT INTO orders VALUES
(1001,1,'2024-01-05','Completed',3500.00),
(1002,2,'2024-01-10','Completed',1200.00),
(1003,1,'2024-02-01','Shipped',  4800.00),
(1004,3,'2024-02-14','Completed',2200.00),
(1005,2,'2024-03-03','Cancelled', 900.00),
(1006,4,'2024-03-10','Completed',6100.00),
(1007,1,'2024-04-02','Completed',1800.00),
(1008,5,'2024-04-15','Pending',  3300.00),
(1009,3,'2024-04-20','Completed',4500.00),
(1010,4,'2024-05-01','Completed',2700.00);
