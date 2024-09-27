# Write your MySQL query statement below


SELECT A.name as Employee ,A.salary as Salary, d.name as Department
FROM (SELECT e.*
FROM Employee e
JOIN (
    SELECT departmentId, MAX(salary) AS salary 
    FROM Employee
    GROUP BY departmentId
) AS sub ON e.departmentId = sub.departmentId AND e.salary = sub.salary) as A
JOIN Department d ON A.departmentId = d.id;



