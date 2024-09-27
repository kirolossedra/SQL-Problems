# Write your MySQL query statement below





select customer_id from (

select customer_id ,count(DISTINCT product_key) as total  
from Customer
GROUP BY customer_id
) as T1

where total = ( select count(product_key) from Product as T2)

