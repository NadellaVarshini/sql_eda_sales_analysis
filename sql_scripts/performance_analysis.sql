--performance analysis
--comparing the current value with the target value

/*yearly performance of products by comparing each 
product sales to both avg sales and prev years sales*/

WITH yearly_product_sales AS (
    SELECT 
        YEAR(f.order_date) AS order_year,
        p.product_name,
        SUM(f.sales_amount) AS current_sales
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
        ON f.product_key = p.product_key
    WHERE f.order_date IS NOT NULL
    GROUP BY 
        YEAR(f.order_date),
        p.product_name
)

SELECT 
    order_year,
    product_name,
    current_sales,
    AVG(current_sales) OVER (PARTITION BY product_name) AS avg_sales,
    current_sales-AVG(current_sales) OVER (PARTITION BY product_name) as diff_avg,
    case when current_sales-AVG(current_sales) OVER (PARTITION BY product_name)>0 THEN 'Above Avg'
         when current_sales-AVG(current_sales) OVER (PARTITION BY product_name)<0 THEN 'Below Avg'
         Else 'Avg'
    END avg_change,
    --Year over Year Analysis
    LAG(current_sales) over(partition by product_name order by order_year) as prev_sales,
    current_sales-LAG(current_sales) over(partition by product_name order by order_year) as diff_sales,
    case when current_sales-LAG(current_sales) over(partition by product_name order by order_year)>0 THEN 'Increase'
         when current_sales-LAG(current_sales) over(partition by product_name order by order_year)<0 THEN 'Decrease'
         else 'No Change'
    end prev_sales_change

FROM yearly_product_sales
order by product_name,order_year;

