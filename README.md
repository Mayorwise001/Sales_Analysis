📊 Sales Analysis Project | MySQL & Power BI
🔎 Project Summary

This project demonstrates an end-to-end data analysis and business intelligence workflow using MySQL and Power BI. The goal was to transform raw sales transaction data into actionable insights by applying structured SQL logic and building an interactive dashboard for business stakeholders.

The project emphasizes clean data modeling, reusable SQL views, and professional BI practices commonly used in real-world analytics roles.


**❗ Business Problem**

The company had sales data stored in a database but lacked clear visibility into:

How revenue was trending over time

Which customers contributed the most to total revenue

Which products were driving sales performance

How to consistently analyze data without rewriting SQL queries

Decision-makers needed a reliable, repeatable, and scalable analytics solution to support data-driven decisions.


**💡 Solution Approach**

I designed a structured analytics workflow that separates data storage, business logic, and visualization:

Modeled the data using MySQL with a well-defined schema

Created reusable SQL views to answer key business questions

Connected Power BI directly to SQL views, avoiding repeated query writing

Built an interactive dashboard to surface insights clearly and efficiently

This approach mirrors how analytics is handled in professional BI environments.


**🧩 Dataset Description**

The dataset represents sales transactions and includes:

Order ID

Order Date

Customer ID & Customer Name

Product ID & Product Name

Quantity

Unit Price

Key Metric Calculation:

**Revenue = Quantity × Unit Price**



**🗂 Project Structure**
sales-analysis-powerbi-mysql/
│
├── sql/
│   ├── 01_create_database_and_table.sql
│   ├── 02_insert_sales_data.sql
│   └── 03_views_and_business_logic.sql
│
├── powerbi/
│   └── sales_analysis_dashboard.pbix
│
├── images/
│   ├── dashboard_overview.png
│
└── README.md


**🛠 Tools & Skills Demonstrated**

SQL (MySQL)

Data Analysis

Data Modeling

SQL Views

Business Intelligence

Power BI

Data Visualization

Dashboard Design

Revenue Analysis

Customer Analytics

Product Performance Analysis


**Analytical Logic (SQL Views)**

Instead of writing SQL repeatedly in Power BI, I implemented SQL views to encapsulate business logic:

Key Views Created

Monthly Revenue Trend – to analyze revenue growth over time

Customer Revenue Analysis – to identify high-value customers

Product Performance – to measure revenue and units sold per product

This approach improves:

Performance

Maintainability

Scalability

Reusability across BI tools



**📊 Power BI Dashboard**

Power BI connects directly to the SQL views, allowing visuals to update automatically whenever the database is refreshed.

Dashboard Features

Line chart showing monthly revenue trends

Bar chart highlighting top customers by revenue

Column chart displaying product performance

Interactive visuals for business exploration

📁 The final dashboard file is available in the images/ folder.




**🖼 Dashboard Preview**

<img width="1022" height="479" alt="powerbi" src="https://github.com/user-attachments/assets/83a29810-4143-4482-a4b9-5f5f7d3ac766" />


**📈 Key Insights & Findings**

Laptop products generated the highest share of total revenue

Revenue showed steady growth from January to February

A small group of customers contributed a large percentage of sales

Some products sold high quantities but generated lower revenue, highlighting pricing impact

**🚀 How to Reproduce This Project**

Run the SQL files in order:

01_create_database_and_table.sql

02_insert_sales_data.sql

03_views_and_business_logic.sql

Open sales_analysis_dashboard.pbix in Power BI Desktop

Update database credentials if required

Refresh the report to load data

**📌 What This Project Demonstrates**

Strong SQL fundamentals and analytical thinking

Ability to translate business questions into data solutions

Experience building reusable and scalable analytics logic

Professional Power BI dashboard development

Real-world data analyst workflow alignment

**🎯 Conclusion**

This project showcases my ability to design and implement a complete data analysis solution, from raw data modeling to executive-ready dashboards. It reflects the skills required of a Data Analyst working with SQL databases and BI tools in a production environment.

👤 Author

Joseph Tomosori
Data Analyst | SQL | Power BI | Excel
