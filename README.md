# E-commerce-Customer-Behavior-Analysis
E-commerce customer behavior analysis using SQL, Python, and Power BI to analyze sales trends, customer patterns, and product performance.

## Project Overview

This project analyzes customer behavior in an e-commerce platform using SQL, Python, and Power BI.

## Tools Used

* MySQL
* Python (Pandas)
* Power BI

## Analysis Performed

* Total Orders
* Total Customers
* Total Revenue
* Top Selling Products
* Top Product Categories
* Repeat Customers Analysis

Project Structure

  Ecommerce-Customer-Behavior-Analysis/

│
├── README.md
├── INSIGHTS.md
│
├── SQL/
│   ├── customer_analysis.sql
│   ├── sales_analysis.sql
│   └── revenue_analysis.sql
│
├── Python/
│   └── analysis.py
│
├── PowerBI/
│   └── dashboard.pbix
│
├── screenshots/
│   ├── dashboard_overview.png
│   ├── top_categories.png
│   └── monthly_trend.png
│

## Dashboard Preview

### Overall Dashboard

<img width="1919" height="1020" alt="Dashboard_Overview" src="https://github.com/user-attachments/assets/2eb2f91f-58a5-4460-b3a2-747f8d797bdb" />

### Top Categories Analysis

<img width="725" height="454" alt="Monthly_Trend" src="https://github.com/user-attachments/assets/5fbc234d-969b-4f53-9370-ac7d1261a345" />

### Monthly Sales Trend

<img width="668" height="478" alt="Top_Categories" src="https://github.com/user-attachments/assets/af4eeeee-a78b-4426-b35f-a3066ea718db" />

**Project Workflow

1.Data Collection:
>Imported e-commerce datasets into MySQL database.

2.Data Cleaning:
>Checked for missing values and ensured data consistency.

3.SQL Analysis:
>Performed joins across multiple tables.
>Calculated KPIs such as total orders, revenue, and customer count.
>Analyzed customer behavior and sales trends.

4.Python Analysis:
>Used Pandas for data manipulation and validation.
>Performed additional analysis for customer insights.

5.Power BI Dashboard:
>Created interactive dashboard with:
   >KPI Cards (Total Orders, Revenue, Customers)
   >Bar Chart (Top Product Categories)
   >Line Chart (Monthly Sales Trend)

6.Business Insights:
>Identified top-performing categories.
>Analyzed customer purchase patterns.
>Evaluated monthly sales performance.**

### How to Run

1. Clone the repository
   git clone https://github.com/your-username/ecommerce-analysis.git

2. Navigate to the project folder
   cd ecommerce-analysis

3. Install required libraries
   pip install pandas numpy

4. Run Python scripts / notebooks
   jupyter notebook

5. Execute SQL queries in your SQL environment

6. Open Power BI dashboard file (.pbix)

## Future Improvements
- Add more advanced customer segmentation
- Improve dashboard interactivity
- Perform predictive analysis
