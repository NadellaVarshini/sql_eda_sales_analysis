--change over time
--measure by date dimension

select DATETRUNC(month,order_date) as order_date,
sum(sales_amount) as total_sales,
count(distinct customer_key) as total_customers,
sum(quantity) as total_quantity
FROM gold.fact_sales
where order_date is NOT NULL
group by DATETRUNC(month,order_date)
order by DATETRUNC(month,order_date);