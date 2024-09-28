# Write your MySQL query statement below



SELECT employee_id 

from (
SELECT e.employee_id, e.name , s.salary
FROM Employees e
LEFT JOIN Salaries s ON s.employee_id = e.employee_id

UNION

SELECT s.employee_id, e.name , s.salary
FROM Employees e
RIGHT JOIN Salaries s ON s.employee_id = e.employee_id



) as T1

where salary is null or name is null
order by employee_id