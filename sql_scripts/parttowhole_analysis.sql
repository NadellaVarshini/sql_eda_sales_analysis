--part  to whole analysis
/*Analyze how an individual part is performing compared
to the overall*/
with category_sales as(
select 
p.category,
sum(f.sales_amount) as total_sales
from gold.fact_sales f
left join gold.dim_products p
on f.product_key=p.product_key
group by category
)

select 
category,
total_sales,
sum(total_sales) over() overall_sales,
concat(ROUND((CAST(total_sales AS FLOAT)/SUM(total_sales) over())*100,2),'%') as percentage_of_total
from category_sales
order by total_sales desc;