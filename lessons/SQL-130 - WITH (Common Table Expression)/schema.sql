-- ============================================================
-- SQL Master
-- Lesson: SQL-130 — WITH (Common Table Expression)
-- Schema: Retail Analytics
-- Business Scenario: Basic CTE
-- ============================================================

CREATE TABLE sales (
    sale_id       INT           PRIMARY KEY,
    sale_date     DATE          NOT NULL,
    region        VARCHAR(50)   NOT NULL,
    store         VARCHAR(100)  NOT NULL,
    category      VARCHAR(50)   NOT NULL,
    product       VARCHAR(100)  NOT NULL,
    revenue       DECIMAL(10,2) NOT NULL,
    units_sold    INT           NOT NULL,
    cost          DECIMAL(10,2) NOT NULL
);
INSERT INTO sales VALUES
(1, '2024-01-05','Dhaka',      'Dhaka Main',   'Electronics','Wireless Mouse', 1700.00, 2,  1020.00),
(2, '2024-01-10','Dhaka',      'Dhaka Main',   'Stationery', 'Notebook A5',     600.00, 5,   300.00),
(3, '2024-01-12','Chittagong', 'CTG Branch',   'Electronics','USB Keyboard',   1200.00, 1,   720.00),
(4, '2024-01-18','Dhaka',      'Dhaka Main',   'Electronics','Headphones',     2500.00, 1,  1500.00),
(5, '2024-02-02','Sylhet',     'Sylhet Outlet','Furniture',  'Office Chair',   8500.00, 1,  5100.00),
(6, '2024-02-08','Chittagong', 'CTG Branch',   'Electronics','Desk Lamp',      1300.00, 2,   780.00),
(7, '2024-02-15','Dhaka',      'Dhaka Main',   'Stationery', 'Marker Set',      270.00, 3,   135.00),
(8, '2024-02-20','Dhaka',      'Dhaka North',  'Electronics','Wireless Mouse', 2550.00, 3,  1530.00),
(9, '2024-03-01','Chittagong', 'CTG Branch',   'Furniture',  'Study Table',    6000.00, 1,  3600.00),
(10,'2024-03-05','Dhaka',      'Dhaka Main',   'Electronics','USB Keyboard',   2400.00, 2,  1440.00),
(11,'2024-03-10','Sylhet',     'Sylhet Outlet','Electronics','Headphones',     5000.00, 2,  3000.00),
(12,'2024-03-15','Dhaka',      'Dhaka North',  'Stationery', 'Notebook A5',     480.00, 4,   240.00),
(13,'2024-04-01','Dhaka',      'Dhaka Main',   'Electronics','Desk Lamp',      1950.00, 3,  1170.00),
(14,'2024-04-08','Chittagong', 'CTG Branch',   'Stationery', 'Marker Set',      360.00, 4,   180.00),
(15,'2024-04-15','Dhaka',      'Dhaka Main',   'Electronics','Wireless Mouse', 4250.00, 5,  2550.00);
