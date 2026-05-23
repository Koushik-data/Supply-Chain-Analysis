# 🚚 Supply Chain Inventory Optimization Analytics

## 📌 Project Overview

This project presents an end-to-end Supply Chain Inventory Optimization analytics solution developed using Python, PostgreSQL, and Power BI. The solution focuses on optimizing inventory management, improving shipping performance, monitoring operational KPIs, and identifying high-value products using ABC inventory classification and Pareto analysis.

The project was designed to simulate a real-world industry-level supply chain analytics workflow covering data cleaning, database management, KPI analysis, business intelligence reporting, and operational decision-making.

---

# 🎯 Problem Statement

The organization was facing multiple operational and inventory management challenges including:

- Overstocking of low-performing inventory
- Poor inventory prioritization
- Revenue concentration in limited products
- Shipping delays and late deliveries
- Lack of operational visibility
- Inefficient inventory allocation and replenishment planning

These issues resulted in increased holding costs, operational inefficiencies, and reduced supply chain performance.

---

# 🚀 Business Goals

The primary business objectives of this project were:

- Identify high-value and low-performing products
- Optimize inventory prioritization using ABC analysis
- Monitor shipping delays and operational KPIs
- Improve inventory turnover and operational efficiency
- Analyze revenue and profitability trends
- Build interactive dashboards for business decision-making

---

# 📂 Dataset
https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis

The data was processed and transformed into an analytics-ready format for SQL querying and dashboard reporting.

---

# 🛠️ Tools & Technologies

- Python (pandas) = Data Cleaning & Transformation 
- PostgreSQL = Database Management & SQL Analytics 
- Power BI = Dashboard Development & Data Visualization 
- DAX = KPI & Dynamic Measure Development 
- GitHub = Project Documentation & Portfolio Hosting 

---

# 🔍 Detailed Methodology

## 1️⃣ Data Cleaning & Transformation (Python)

Performed data preprocessing using pandas including:

- Handling missing values
- Removing duplicate records
- Standardizing operational data
- Converting date columns
- Creating derived business metrics:
  - shipping_delay
  - actual_shipping_days
  - monthly trends

The cleaned dataset was exported for database integration.

---

## 2️⃣ Database Design & SQL Analytics (PostgreSQL)

Designed a relational database and performed SQL-based KPI analysis including:

- Total Revenue
- Total Profit
- Monthly Revenue Trend
- Monthly Profit Trend
- Late Delivery Rate
- Average Shipping Delay
- Product Performance Analysis

Advanced SQL concepts used:
- CTEs
- Window Functions
- CASE Statements
- Aggregate Functions
- Ranking Logic

---

## 3️⃣ ABC Inventory Classification

Implemented ABC inventory analysis using cumulative revenue contribution logic.

 Category   Description 

- A  High-value products 
- B  Medium-priority products 
- C  Low-performing products 

Classification logic:
- Top 70% Revenue → A
- Next 20% Revenue → B
- Remaining Revenue → C

This enabled inventory prioritization and operational optimization.

---

## 4️⃣ Power BI Dashboard Development

Developed fully interactive Power BI dashboards with:

- KPI cards
- Pareto Analysis
- ABC Donut Analysis
- Shipping Performance Monitoring
- Revenue & Profit Trends
- Region-wise Performance Analysis
- Dynamic slicers and cross-filtering

---

# 🔄 Project Workflow

```text
Raw Dataset
    ↓
Python Data Cleaning & Transformation
    ↓
PostgreSQL Database & SQL KPI Analysis
    ↓
ABC Inventory Classification
    ↓
Power BI Dashboard Development
    ↓
Business Insights & Recommendations
```

---

# 📊 Key KPIs

- Total Revenue
- Total Profit
- Total Orders
- Average Shipping Days
- Late Delivery Rate
- Monthly Revenue Trend
- Monthly Profit Trend
- Product Revenue Contribution
- Inventory Category Contribution

---

# 📈 Dashboards 

## 📄 Executive Overview Dashboard
- Revenue & Profit KPIs
- Revenue Trend Analysis
- Region-wise Sales
- Product Category Analysis

---

## 📄 ABC Inventory Dashboard
- Pareto Chart
- ABC Donut Chart
- Product Contribution Analysis
- Inventory Prioritization Insights

---

## 📄 Shipping Performance Dashboard
- Late Delivery Monitoring
- Shipping Delay Analysis
- Region-wise Shipping Performance
- Operational KPI Tracking

---
# 🖼️ Dashboard Preview

## Executive Overview
![Executive Dashboard](Images/dashboard_overview.png)

---

## ABC Inventory Dashboard
![ABC Dashboard](Images/abc_dashboard.png)

---

## Shipping Performance Dashboard
![Shipping Dashboard](Images/shipping_dashboard.png)

---

# 🧠 DAX Measures Developed

Key DAX calculations created:

- Total Revenue
- Total Profit
- Rank
- Cumulative Revenue
- Cumulative %
- ABC Category
- Revenue A/B/C
- Dynamic Conditional Formatting

Advanced DAX functions used:
- CALCULATE
- FILTER
- RANKX
- SWITCH
- ALLSELECTED
- ALLEXCEPT

---

# 📌 Key Business Insights

- A-category products contributed the majority of organizational revenue.
- Revenue generation was concentrated among limited high-performing products.
- C-category products showed low inventory movement and increased holding costs.
- Shipping delays negatively impacted operational efficiency.
- Certain regions experienced significantly higher delivery risks and delays.

---

# 🚀 Recommendations

- Prioritize inventory management for A-category products.
- Reduce overstocking of low-performing inventory.
- Improve logistics and delivery operations.
- Optimize replenishment planning and safety stock levels.
- Use historical trends for forecasting and operational planning.
- Focus promotions on high-performing products.

---

# ▶️ How to Run the Project

## 1️⃣ Python Data Cleaning
Run the Jupyter Notebook to clean and transform the dataset.

```bash
jupyter notebook
```

---

## 2️⃣ PostgreSQL Database Setup

Create the PostgreSQL database and execute SQL scripts:

```sql
CREATE DATABASE supply_chain_db;
```

Import the cleaned dataset into PostgreSQL.

---

## 3️⃣ Power BI Dashboard

Open the `.pbix` file in Power BI Desktop and refresh the data connection.

---

# ✅ Final Outcome

The project successfully delivered an industry-level supply chain analytics solution capable of:

- Monitoring operational KPIs
- Optimizing inventory prioritization
- Identifying high-value products
- Improving shipping performance visibility
- Supporting data-driven operational decision-making

The solution demonstrates practical business intelligence, SQL analytics, dashboard development, and supply chain optimization capabilities.

---

# 🔮 Future Enhancements

- Demand Forecasting using Machine Learning
- Real-time Dashboard Integration
- Automated ETL Pipelines
- Advanced Supply Chain Forecasting Models

---

# 👨‍💻 Author & Contact

## Koushik Das

Data Analyst | Power BI | SQL | Python | Supply Chain Analytics


## 🔗 Connect With Me
- 📧 Email: daskoushik44261@gmail.com  
- 📱 Phone: +91 6290610739  
- GitHub: https://github.com/Koushik-data
- LinkedIn: https://www.linkedin.com/in/koushik-das-71a2a8220/

---
