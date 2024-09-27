# Write your MySQL query statement below



select name 
from Employee as e
JOIN (
select managerId, count(id) as cnt from Employee group by managerId) AS T2
WHERE e.id = T2.managerId
AND  T2.cnt>=5;


