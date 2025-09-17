-- analysis_queries.sql: KPIs
-- Total Sales & Profit
select sum(sales) as total_sales, 
sum(profit) as total_profit
from sales_fact;

-- sales by region
select c.region, sum(f.sales) as sales, sum(f.profit) as profit
from sales_fact f
join dim_customer c 
on f.customer_id=c.customer_id
group by c.region order by sales desc;

-- Top 10 Products
SELECT p.product_name, SUM(f.sales) AS sales
FROM sales_fact f JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name ORDER BY sales DESC LIMIT 10;

-- Monthly Trenr
SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales) AS sales
FROM sales_fact GROUP BY 1 ORDER BY 1;
