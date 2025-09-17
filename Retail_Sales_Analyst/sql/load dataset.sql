-- etl.sql: Transform and load data
-- Example: Insert into dimension and fact tables from staging
insert ignore into dim_customer (customer_id,customer_name,region,country)
select distinct customer_id,customer_name,region,country
from mytable;

INSERT ignore INTO dim_product (product_id, product_name, category, sub_category)
SELECT DISTINCT product_id, product_name, category, sub_category
FROM mytable;

INSERT INTO sales_fact (order_id, order_date, customer_id, store_id, product_id, quantity, unit_price, discount, cost, sales, profit)
SELECT order_id, order_date, customer_id, store_id, product_id, quantity, unit_price, discount, cost, sales, profit
FROM mytable;
