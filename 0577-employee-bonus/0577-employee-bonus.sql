# Write your MySQL query statement below


select name as name , bonus from (
SELECT e.name, d.bonus
FROM Employee  e
LEFT JOIN Bonus  d ON e.empId = d.empId) as all_orders  where bonus is null or bonus<1000 