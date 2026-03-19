# 📊 End-to-End Retail Data Engineering & Analytics Pipeline on Azure

# 🔥 Project Overview
This project demonstrates a complete end-to-end data pipeline built using Azure cloud services, Databricks, and Power BI. The pipeline ingests raw data from GitHub, transforms it using PySpark, and generates actionable business insights.

---

##⚙️ Tech Stack
- Azure Data Factory (Parameterized Pipeline)
- Azure Data Lake Gen2 (Bronze, Silver, Gold)
- Azure Databricks (PySpark)
- Azure Synapse Analytics (SQL)
- Power BI

---

#🔄 Data Pipeline Architecture

GitHub API → Azure Data Factory → Bronze Layer  
→ Databricks (PySpark) → Silver Layer  
→ Synapse (Fact & Dimension Tables) → Gold Layer  
→ Power BI Dashboard  

---

# 🧱 Data Model (Star Schema)

### Dimension Tables:
- dim_customer
- dim_product
- dim_date
- dim_territory

### Fact Tables:
- fact_sales
- fact_returns

---

## 📊 Dashboard Pages

# Executive Overview
- Revenue trend
- Category & region performance

# Product Analysis
- Top products by revenue & profit
- Return analysis

# Customer Analysis
- Customer profitability vs returns
- Top customers

---

## 📈 Key Insights

- Revenue growth observed after initial decline  
- Few products dominate overall revenue  
- High return rates impact profitability  
- Customer concentration creates dependency risk  

---

## 🎯 Business Value

- Identifies high-performing products & customers  
- Highlights risk areas (returns)  
- Enables data-driven decision making  

---
Author: Ketan Dubey
