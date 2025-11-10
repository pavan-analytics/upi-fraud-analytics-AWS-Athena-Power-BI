Q6) At what time window (days/weeks represented by "step") is fraud activity peaking, indicating potential fraud attack bursts?
SELECT step, SUM(fraud_label) AS fraud_txn
FROM raw_data
GROUP BY step
ORDER BY fraud_txn DESC
LIMIT 10;