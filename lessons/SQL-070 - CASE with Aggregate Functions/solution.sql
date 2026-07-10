-- ============================================================
-- SQL Master
-- Lesson: SQL-070 — CASE with Aggregate Functions
-- ============================================================

-- Question 1
SELECT
    COUNT(CASE WHEN risk_level = 'High' THEN 1 END) AS "High Risk Count",
    COUNT(CASE WHEN risk_level = 'Medium' THEN 1 END) AS "Medium Risk Count",
    COUNT(CASE WHEN risk_level = 'Low' THEN 1 END) AS "Low Risk Count"
FROM transactions;

-- Question 2
SELECT
    SUM(CASE WHEN transaction_type = 'Credit' THEN amount ELSE 0 END) AS "Total Credits",
    SUM(CASE WHEN transaction_type = 'Debit' THEN amount ELSE 0 END) AS "Total Debits"
FROM transactions;

-- Question 3
SELECT
    account_id,
    SUM(CASE WHEN transaction_type = 'Credit' THEN amount ELSE 0 END) AS "Total Credit Amount",
    SUM(CASE WHEN transaction_type = 'Debit' THEN amount ELSE 0 END) AS "Total Debit Amount",
    SUM(CASE WHEN risk_level = 'High' THEN amount ELSE 0 END) AS "Total High Risk Amount"
FROM transactions
GROUP BY account_id;

-- Question 4
SELECT
    account_id,
    COUNT(CASE WHEN risk_level = 'High' THEN 1 END) AS high_risk_count,
    COUNT(CASE WHEN risk_level = 'Medium' THEN 1 END) AS medium_risk_count,
    COUNT(CASE WHEN risk_level = 'Low' THEN 1 END) AS low_risk_count
FROM transactions
GROUP BY account_id;
