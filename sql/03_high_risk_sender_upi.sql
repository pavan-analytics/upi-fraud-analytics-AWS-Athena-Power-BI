Q3) Which sender UPI IDs demonstrate recurring suspicious fraud behavior and should be priority targets for account monitoring?
SELECT sender_upi,
       COUNT(*) AS total_txn,
       SUM(fraud_label) AS fraud_txn
FROM raw_data
GROUP BY sender_upi
HAVING SUM(fraud_label) > 0
ORDER BY fraud_txn DESC
LIMIT 10;