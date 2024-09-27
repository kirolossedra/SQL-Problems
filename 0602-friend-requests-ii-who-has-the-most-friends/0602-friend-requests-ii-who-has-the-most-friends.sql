# Write your MySQL query statement below


select id,num from(
select id, sum(cnt) as num
FROM (

SELECT accepter_id as id, count(requester_id) as cnt
from RequestAccepted 
GROUP BY accepter_id 






UNION ALL 

SELECT requester_id as id, count(accepter_id) as cnt
    from RequestAccepted
    GROUP BY requester_id
    



) AS T1

GROUP BY id




)  as T2

where num= (
    
    
    select max(num) from (select id, sum(cnt) as num
FROM (

SELECT accepter_id as id, count(requester_id) as cnt
from RequestAccepted 
GROUP BY accepter_id 






UNION ALL 

SELECT requester_id as id, count(accepter_id) as cnt
    from RequestAccepted
    GROUP BY requester_id
    



) AS T1

GROUP BY id


) as T3
    
    
    
    






)


