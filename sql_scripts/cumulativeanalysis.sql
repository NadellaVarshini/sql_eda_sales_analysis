---cumulative_analysis
--aggregate the data progressively over time
/*Cumulative Analysis
------------------------------------------------------------------------------
Purpose:
    - To calculate running totals or moving averages for key metrics.
    - To track performance over time cumulatively.
    - Useful for growth analysis or identifying long-term trends.

SQL Functions Used:
    - Window Functions: SUM() OVER(), AVG() OVER()
-------------------------------------------------------------------------------
*/
select *,
sum(total_sales) over(order by order_date) as running_total_sales,
avg(avg_price) over(order by order_date) as moving_avg_price
from(
select 
DATETRUNC(month,order_date) as order_date,
sum(sales_amount) as total_sales,
AVG(price) as avg_price
from gold.fact_sales
where order_date is not null
group by DATETRUNC(month,order_date)

)t
