Q9) Which payment mechanisms represent the highest fraud loss potential combining amount magnitude + fraud probability?
SELECT payment_type,
       ROUND(SUM(amount)/COUNT(*),2) AS avg_amount_risk,
       ROUND((SUM(fraud_label)*100.0/COUNT(*)),2) AS fraud_rate_pct
FROM raw_data
GROUP BY payment_type
ORDER BY avg_amount_risk DESC;