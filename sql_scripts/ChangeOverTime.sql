--change over time analysis
--measure by date dimension
/*Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATEPART(), DATETRUNC(), FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()*/

select DATETRUNC(month,order_date) as order_date,
sum(sales_amount) as total_sales,
count(distinct customer_key) as total_customers,
sum(quantity) as total_quantity
FROM gold.fact_sales
where order_date is NOT NULL
group by DATETRUNC(month,order_date)

order by DATETRUNC(month,order_date);
