# Write your MySQL query statement below

select name as Customers from (
SELECT e.name, d.id
FROM Customers e
LEFT JOIN Orders d ON e.id = d.customerId) as all_orders  where id is null
