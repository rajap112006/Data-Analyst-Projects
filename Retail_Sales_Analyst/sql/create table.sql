-- ddl.sql: Create schema
create table sales_fact (
order_id varchar(50),
order_date date,
customer_id varchar(50),
store_id varchar(50),
product_id varchar(50),
quantity int,
unit_price numeric(12,2),
discount numeric(5,2),
cost numeric(12,2),
sales numeric(14,2),
profit numeric(14,2)

);

create table dim_customer (
customer_id varchar(50) primary key,
customer_name varchar(255),
region varchar(50),
country varchar(100)
);

create table dim_product (
product_id varchar(50) primary key,
product_name varchar(255),
category varchar(100),
sub_category varchar(100)

);
