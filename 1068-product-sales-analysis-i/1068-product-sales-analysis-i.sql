# Write your MySQL query statement below


select   year , price , p.product_name
from Sales s
JOIN 
Product p
ON  s.product_id = p.product_id
