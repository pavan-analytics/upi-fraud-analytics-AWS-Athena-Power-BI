Q1) What is the overall fraudulent transaction exposure in the UPI ecosystem?
SELECT 
    COUNT(*) AS total_txn,
    SUM(fraud_label) AS fraud_txn,
    ROUND((SUM(fraud_label)*100.0/COUNT(*)),2) AS fraud_rate_pct
FROM raw_data;