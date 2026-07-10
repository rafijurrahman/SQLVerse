-- ============================================================
-- SQL Master
-- Lesson: SQL-C023 — Subquery vs JOIN
-- Schema: CRM
-- Business Scenario: Subquery vs JOIN
-- ============================================================

CREATE TABLE customers (
    customer_id   INT           PRIMARY KEY,
    first_name    VARCHAR(50)   NOT NULL,
    last_name     VARCHAR(50)   NOT NULL,
    email         VARCHAR(100)  NOT NULL,
    city          VARCHAR(50)   NOT NULL,
    customer_type VARCHAR(20)   NOT NULL DEFAULT 'Regular'
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
(1,'Rahim',   'Uddin',  'rahim@crm.com',   'Dhaka',      'Premium'),
(2,'Fatema',  'Begum',  'fatema@crm.com',  'Chittagong', 'Regular'),
(3,'Karim',   'Molla',  'karim@crm.com',   'Dhaka',      'Premium'),
(4,'Nasrin',  'Akter',  'nasrin@crm.com',  'Sylhet',     'Regular'),
(5,'Milon',   'Ahmed',  'milon@crm.com',   'Rajshahi',   'Regular'),
(6,'Tania',   'Rahman', 'tania@crm.com',   'Dhaka',      'VIP'),
(7,'Rubel',   'Islam',  'rubel@crm.com',   'Barisal',    'Regular'),
(8,'Sumaiya', 'Khatun', 'sumaiya@crm.com', 'Dhaka',      'Premium');
INSERT INTO orders VALUES
(1001, 1, '2024-01-05', 'Completed',  3500.00),
(1002, 2, '2024-01-10', 'Completed',  1200.00),
(1003, 1, '2024-01-20', 'Completed',  4800.00),
(1004, 3, '2024-02-01', 'Completed',  2200.00),
(1005, 2, '2024-02-10', 'Cancelled',   900.00),
(1006, 6, '2024-02-14', 'Completed',  8500.00),
(1007, 1, '2024-03-03', 'Completed',  1800.00),
(1008, 5, '2024-03-11', 'Pending',    3300.00),
(1009, 3, '2024-03-20', 'Completed',  4500.00),
(1010, 6, '2024-04-02', 'Completed', 12000.00),
(1011, 8, '2024-04-10', 'Completed',  6200.00),
(1012, 4, '2024-04-15', 'Completed',  1500.00);
