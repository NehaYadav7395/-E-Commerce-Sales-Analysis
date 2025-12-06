create database sql_case_study_ecommerce;
use sql_case_study_ecommerce;


select * from orders_100;

-- ⭐ 5.1 Total Revenue

select sum(amount) as total_revenue
from orders_100;

-- Explanation
-- Calculates total money earned from all orders.


-- ⭐ 5.2 Monthly Revenue

select sum(amount) as revenue, DATE_FORMAT(order_date,'%Y-%m') as month
from orders_100
group by DATE_FORMAT(order_date,'%Y-%m')
order by month;


-- Explanation:
-- Monthly trend analysis for business decisions.


-- ⭐ 5.3 Top 5 Most Sold Products


select count(*) as total_sold,product_category
from orders_100
group by product_category
order by total_sold
limit 5;


-- ⭐ 5.4 Top 3 High-Value Customers

select customer_id, sum(amount) as total_amount
from orders_100
group by customer_id
order by total_amount desc
limit 3;


-- ⭐ 5.5 Repeat Customers

select customer_id,count(*) as repeat_customer
from orders_100
group by customer_id
having repeat_customer > 1;


