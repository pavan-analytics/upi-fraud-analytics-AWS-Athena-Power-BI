Q5) Do fraudulent transactions differ financially from normal transactions (is fraud typically higher ticket value)?
SELECT 
    CASE WHEN fraud_label=1 THEN 'Fraud' ELSE 'Non-Fraud' END AS txn_type,
    ROUND(AVG(amount),2) AS avg_amount
FROM raw_data
GROUP BY fraud_label;