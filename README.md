

##  Project Overview
This project demonstrates Exploratory Data Analysis (EDA) using SQL Server (SSMS) on a sales dataset.
The goal is to understand data structure, trends, performance, and key business insights using  SQL.

##Insights
1.Performed Exploratory Data Analysis (EDA) on sales data using SQL Server, working with fact and dimension tables modeled in a star schema
2. Analyzed end-to-end sales data using SQL and derived key KPIs including ₹2.93 Cr revenue, 27K+ orders, and 18K+ cusomers, demonstrating strong business scale
3. Identified a ~43x growth in monthly revenue from ₹43K (Dec 2010) to ₹18.7L (Dec 2013), indicating strong business expansion
4. Built customer analytics model using SQL (CTEs, CASE, aggregations) to segment users by age group, lifecycle, and spending behavior, revealing ~79% new customers and retention opportunities
5. Developed reusable SQL views for product and customer performance analysis, identifying ~96.5% revenue from Bikes and ~100% contribution from top 5 products, highlighting high business dependency

##  Data Model (Star Schema)

The dataset is modeled using a star schema, commonly used in data warehousing and analytics.
The data follows a star schema design, with a central fact table (`fact_sales`) connected to multiple dimension tables (`dim_customers`, `dim_products`, date dimension) to support efficient analytical queries.

### Fact Table
- fact_sales
  - Contains transactional sales data
  - Measures: sales amount, quantity, revenue
  - Foreign keys link to dimension tables

### Dimension Tables
- dim_customers – customer attributes (customer name, region, segment, etc.)
- dim_products – product attributes (product name, category, brand, etc.)


##  Tools Used
- SQL Server
- SQL Server Management Studio (SSMS)
- Git & GitHub

## 📂 Dataset
The dataset follows a star schema:
- `gold.fact_sales`-sales fact table
- `gold.dim_customers`-customer dimension table
- `gold.dim_products`-products dimension table

##  Analysis Covered
1. Database exploration
2. Dimension exploration
3. Measures exploration
4.Date exploration
5.Magnitude Analysis
6.Ranking analysis
7.change over time analysis
8.Cumulative analysis
9.Performance analysis
10.Date Segementation
11.Part to Whole Analysis
12. Customer & product reports

##  Key Skills Demonstrated
1.Basic SQL
2.Joins & aggregations
3.Window functions
4.Time-based analysis
5.Ranking & cumulative metrics
6.Business-oriented SQL reporting


