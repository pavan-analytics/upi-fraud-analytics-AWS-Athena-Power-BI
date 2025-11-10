Q7) What types of fraud patterns are most dominant across UPI transactions (Account Takeover / Fake Merchant / Micro Velocity / Social Engineering)?
SELECT fraud_type, COUNT(*) AS fraud_count
FROM raw_data
WHERE fraud_label = 1
GROUP BY fraud_type
ORDER BY fraud_count DESC;