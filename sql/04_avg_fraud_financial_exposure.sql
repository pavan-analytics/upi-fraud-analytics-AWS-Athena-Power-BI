Q4) What is the typical financial exposure per fraudulent incident (average amount per fraud transaction)?
SELECT 
    ROUND(AVG(amount),2) AS avg_fraud_amount
FROM raw_data
WHERE fraud_label = 1;