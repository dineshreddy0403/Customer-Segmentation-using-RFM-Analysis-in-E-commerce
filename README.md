# 🛍️ Customer Segmentation using RFM Analysis in E-commerce 
This project performs **Customer Segmentation using RFM (Recency, Frequency, Monetary) Analysis** on an eCommerce dataset.  
The goal is to uncover key customer segments that drive business performance and design **targeted marketing and retention strategies**.

By integrating **Python, SQL, and Power BI**, this project provides a complete data analytics workflow — from **data cleaning** to **insightful dashboard visualization** — empowering businesses to improve **Customer Lifetime Value (CLV)** and **marketing ROI**.

---

## 🎯 Key Objectives  
- Segment customers using RFM methodology  
- Identify customer groups such as **High-Value**, **Loyal**, **At-Risk**, and **Dormant**  
- Create actionable insights for customer engagement and retention  
- Visualize customer segments and KPIs through **Power BI dashboards**

---
## 📂 Dataset Overview  

| Feature | Description |
|---|---|
| **Source** | Kaggle — Online Retail eCommerce Dataset |
| **Records** | 541,909 transactions |
| **Duration** | Dec 2010 – Sep 2011 |
| **Key Columns** | CustomerID, InvoiceNo, InvoiceDate, Quantity, UnitPrice, TotalSales, Country |

---

## 📂 Dataset Access  

The dataset used in this project is publicly available on **Kaggle** — a UK-based online retail transaction dataset ideal for customer segmentation.  
It includes over 500 K records covering invoice details, customer IDs, quantities, and unit prices.

📁 **Dataset Source:**  
[👉 Online Retail Dataset – Kaggle](https://www.kaggle.com/datasets/tunguz/online-retail)

---

## 🧹 Data Preparation  
- Removed missing or invalid `CustomerID` values  
- Eliminated duplicate and cancelled transactions  
- Excluded non-product codes (e.g., postage, manual adjustments)  
- Created a new feature: `TotalSales = Quantity × UnitPrice`  
- Processed data for **SQL** and **Power BI** analysis  

---

## 🧮 RFM Methodology  

| Metric | Description |
|---|---|
| **Recency (R)** | Days since the customer’s last purchase |
| **Frequency (F)** | Number of transactions made by the customer |
| **Monetary (M)** | Total spending by the customer |

Each metric was scored on a **1–5 scale** using SQL `NTILE()` ranking.  
Combined RFM scores categorize customers into performance-based segments.

---

## 👥 Customer Segmentation Summary  

| Segment | Characteristics | Recommended Strategy |
|---|---|---|
| 🌟 **High Value** | Frequent, high-spending, recent buyers | VIP rewards, exclusive offers, early product access |
| 💙 **Loyal** | Consistent, repeat customers | Upsell/cross-sell campaigns, loyalty programs |
| ⚠️ **At-Risk** | Declining engagement, low frequency | Win-back discounts, reactivation emails |
| 🕸️ **Dormant** | Inactive, low-value buyers | Comeback offers, feedback surveys, new incentives |

---

## 📊 Power BI Dashboard  

The **Power BI Dashboard** visualizes all key metrics and RFM-based customer segments in an interactive and business-friendly format.  

![Customer Segmentation Dashboard](https://github.com/dineshreddy0403/Customer-Segmentation-using-RFM-Analysis-in-E-commerce/blob/main/results/Dashboard_Screenshot.png)

### **Dashboard Highlights**
- **Total Revenue:** 8.74M  
- **Active Customers:** 4K  
- **Total Orders:** 18K  
- **Sales Volume:** 5M  

### **Interactive Components**
- Customers by Segment (Pie Chart)  
- Revenue Contribution by Segment (Area Chart)  
- RFM Heatmap (5×5 grid)  
- Revenue by Day of Week (Bar Chart)  
- Active Customers Over Time (Line Chart)  
- Top & Bottom Customers by Sales (Table View)  

📁 Power BI File:  
`https://github.com/dineshreddy0403/Customer-Segmentation-using-RFM-Analysis-in-E-commerce/blob/main/Ecommerce_RFM_PowerBI_Dashboard.pbix`

---

### 📈 Customer Retention & Churn Trends  
A trend analysis was performed using Python to monitor monthly **customer retention, churn, and new acquisitions**.  
This visualization highlights how customer behavior evolves across time periods.

![Customer Retention & Churn Trends](https://github.com/dineshreddy0403/Customer-Segmentation-using-RFM-Analysis-in-E-commerce/blob/main/results/Customer%20Retention%20%26%20Churn%20Trends.png)

**Insights from Trend Analysis:**
- **Returning customers** showed strong growth post mid-2011.  
- **Churned customers** stabilized between March–August but declined by late 2011.  
- **New customer acquisition** fluctuated, suggesting the need for improved onboarding and promotions.  

---

## 🧠 Key Findings  

- **26% of customers drive 80% of total revenue** (Pareto Effect).  
- **High-value customers** show strong recency, frequency, and spending behavior.  
- **Friday** has the highest sales volume, ideal for campaign launches.  
- **Dormant customers** represent untapped reactivation potential.  
- Power BI dashboard provides real-time segmentation filtering by **Country**, **Month**, and **Customer Type**.  

---

## 🎯 Actionable Insights  

| Focus Area | Recommended Action |
|---|---|
| **Marketing Optimization** | Focus marketing spend on high-value and loyal customers to maximize ROI. |
| **Retention Strategy** | Launch loyalty programs, personalized offers, and referral campaigns to improve engagement. |
| **Reactivation Efforts** | Design targeted win-back promotions for at-risk and dormant segments using personalized emails. |
| **Revenue Growth** | Implement upselling and cross-selling strategies in loyal segments to boost average order value (AOV). |
| **Customer Experience** | Collect feedback from dormant customers to identify barriers and enhance overall satisfaction. |
| **Sales Timing** | Schedule campaigns or flash sales on Fridays to capitalize on peak purchasing behavior. |

---

## 🚀 Project Tech Stack  

| Category | Tools |
|---|---|
| **Data Cleaning** | Python (Pandas, NumPy) |
| **RFM Segmentation** | SQL Server |
| **Visualization** | Power BI |
| **Dashboarding** | Power BI |
| **Presentation** | PowerPoint |

---

## 📂 Repository Structure 
```text
Ecommerce-Customer-Segmentation-RFM-Analysis/
├── data/
│   └── README.md                               # Explains where to download the dataset (Kaggle link)
│
├── Customer Segmentation using RFM Analysis in E-Commerce.ipynb           # Jupyter notebook for Python data cleaning & analysis
│
├── RFM_Analysis.sql                        # SQL script for RFM metric computation & segmentation
│
├── Ecommerce_RFM_PowerBI_Dashboard.pbix    # Power BI dashboard file
│
├── presentation/
│   └── Customer-Segmentation-Project-Presentation.pptx      # Project presentation slides
│
├── results/
│   └── Dashboard_Screenshot.png        # Power BI dashboard preview
│
└──README.md                                   # Full project documentation

```
