# UPI Fraud Analytics using AWS Athena & Power BI  
### Digital Payments Fraud Intelligence & Cloud Analytics

---

## 📌 Project Overview

This project analyzes fraudulent patterns within UPI digital payment transactions using Cloud Data Engineering + BI Analytics.  
The solution leverages AWS S3, Glue, Athena and IAM to build a scalable serverless fraud analytics pipeline and visualizes insights in Power BI.

The goal is to identify high-risk payment channels, fraud attack bursts, malicious account behavior, and financial loss exposure patterns to help improve fraud prevention strategy.


---

## 🎯 Business Problem Definition

A digital payments company is experiencing a rise in fraudulent UPI transactions leading to financial loss, operational dispute overhead, risk escalations, and customer trust impact.  
Fraud teams seek to understand:

- Which payment channels are more vulnerable?
- Which UPI accounts repeatedly trigger fraud?
- Which fraud typologies are dominant?
- How does fraud evolve across time windows?
- What ticket-size difference exists between normal vs fraud?

**Business Question:**  
“How can cloud-based analytics help detect fraud exposure patterns, identify risky accounts and strengthen prevention to reduce UPI fraud losses?”

---

## 🏗️ Cloud Architecture Used

| Layer             | Technology | Purpose                              |
|------------------ |------------|--------------------------------------|
| Data Lake         | S3         | Raw UPI transaction storage          |
| ETL + Metadata    | Glue       | Schema detection + partition catalog |
| Analytical Engine | Athena     | Advanced SQL fraud analysis          |
| Access Layer      | IAM        | Secure controlled access             |
| BI Layer          | Power BI   | Dashboards, insights, patterns       |


---

## 🔍 Analysis Performed (Athena SQL)

A total of **9 fraud analysis queries** were executed to derive:

- Fraud Exposure %
- Fraud Type Dominance
- High Frequency Fraud Senders
- High Risk Receiving UPIs (Mules)
- Fraud vs Non-Fraud Avg Ticket Value Difference
- Time Step Burst Windows (Fraud Attack Spikes)
- Payment Type Loss Potential Metrics

All SQL scripts available inside `/sql/`

---

## 📊 Power BI Dashboard Insights

Dashboard Title: **UPI Fraud Analytics using AWS Athena & Power BI**

**KPIs Included:**

- Total Transactions  
- Total Fraud Transactions  
- Avg Transaction Amount  
- Avg Fraud Transaction Amount  
- Fraud Rate %

**Visuals:**

- Fraud Type Distribution (Donut)
- Fraud Trend Over Step Time (Line Chart)
- Fraud by Payment Type (Bar Chart)
- Top High Risk Sender UPI Accounts (Table)



