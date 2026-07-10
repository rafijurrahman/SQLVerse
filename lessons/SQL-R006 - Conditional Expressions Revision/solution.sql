-- ============================================================
-- SQL Master
-- Lesson: SQL-R006 — Conditional Expressions Revision
-- ============================================================

-- Question 1
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.account_type,
    a.balance,
    CASE 
           WHEN a.balance >= 100000 THEN 'High'
           WHEN a.balance >= 10000 THEN 'Medium'
           ELSE 'Low'
       END AS balance_tier
FROM customers c
INNER JOIN accounts a ON c.customer_id = a.customer_id;

-- Question 2
SELECT
    a.account_id,
    a.account_number,
    COALESCE(c.email, 'N/A') AS Email,
    IFNULL(c.phone, 'N/A') AS Phone,
    CASE a.status 
           WHEN 'Active' THEN 'Open'
           WHEN 'Frozen' THEN 'Locked'
           ELSE 'Closed'
       END AS status_desc
FROM accounts a
LEFT JOIN customers c ON a.customer_id = c.customer_id;

-- Question 3
SELECT
    a.account_number,
    t.amount,
    t.transaction_type,
    t.risk_level,
    CASE 
           WHEN t.risk_level = 'High' AND t.transaction_type = 'Debit' AND t.amount > 50000 THEN 'CRITICAL ALERT'
           WHEN t.risk_level = 'High' THEN 'WARNING'
           ELSE 'OK'
       END AS risk_status
FROM transactions t
INNER JOIN accounts a ON t.account_id = a.account_id;

-- Question 4
SELECT
    a.account_number,
    t.amount,
    t.transaction_type,
    t.risk_level,
    CASE 
           WHEN t.risk_level = 'High' AND t.transaction_type = 'Debit' AND t.amount > 50000 THEN 'CRITICAL ALERT'
           WHEN t.risk_level = 'High' THEN 'WARNING'
           ELSE 'OK'
       END AS risk_status
FROM transactions t
INNER JOIN accounts a ON t.account_id = a.account_id
ORDER BY CASE WHEN t.risk_level = 'High' AND t.transaction_type = 'Debit' AND t.amount > 50000 THEN 1 WHEN t.risk_level = 'High' THEN 2 ELSE 3 END ASC;
