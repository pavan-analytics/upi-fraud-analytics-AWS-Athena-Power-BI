Q8) Which receiving UPI endpoints are repeatedly targeted, indicating probable mule accounts or fraudulent merchant acceptance funnels?
SELECT receiver_upi, COUNT(*) AS fraud_received
FROM raw_data
WHERE fraud_label = 1
GROUP BY receiver_upi
ORDER BY fraud_received DESC
LIMIT 10;