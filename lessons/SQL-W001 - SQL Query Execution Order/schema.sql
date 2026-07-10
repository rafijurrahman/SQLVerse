-- ============================================================
-- SQL Master
-- Lesson: SQL-W001 — SQL Query Execution Order
-- Schema: Retail Sales
-- Business Scenario: Query execution
-- ============================================================

CREATE TABLE orders (
    order_id    INT           PRIMARY KEY,
    customer_id INT           NOT NULL,
    order_date  DATE          NOT NULL,
    city        VARCHAR(50)   NOT NULL,
    status      VARCHAR(20)   NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL
);
INSERT INTO orders VALUES
(1001, 1, '2024-01-05', 'Dhaka',      'Completed', 3500.00),
(1002, 2, '2024-01-10', 'Chittagong', 'Completed', 1200.00),
(1003, 1, '2024-01-15', 'Dhaka',      'Pending',   4800.00),
(1004, 3, '2024-02-01', 'Sylhet',     'Completed', 2200.00),
(1005, 2, '2024-02-10', 'Chittagong', 'Cancelled', 900.00),
(1006, 4, '2024-02-14', 'Dhaka',      'Completed', 6100.00),
(1007, 1, '2024-03-03', 'Dhaka',      'Completed', 1800.00),
(1008, 5, '2024-03-11', 'Rajshahi',   'Pending',   3300.00),
(1009, 3, '2024-03-20', 'Sylhet',     'Completed', 4500.00),
(1010, 4, '2024-04-02', 'Dhaka',      'Completed', 2700.00);
