# Write your MySQL query statement below



select user_id, max(time_stamp) as last_stamp
from(select * from Logins 
where YEAR(time_stamp) = 2020) as T1
group by user_id

