# Write your MySQL query statement below


SELECT product_name , unit
FROM Products P
JOIN (select product_id , sum(unit) as unit from (select * from Orders where MONTH(order_date) =2 and year(order_date) = 2020) as T1


GROUP BY product_id) AS T2
on P.product_id = T2.product_id
where unit>=100






