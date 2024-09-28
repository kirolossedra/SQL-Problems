# Write your MySQL query statement below




SELECT 
      CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(op, '(', -1), ',', 1) AS UNSIGNED) AS actor_id,
    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(op, ',', -1), ')', 1) AS UNSIGNED) AS director_id
FROM 
    (    
SELECT op , count(op) as cnt from (select concat( '(' , actor_id ,',',director_id, ')') as op

from

ActorDirector) as T1

group by op
 ) as T2
 
 where cnt>=3;


    

   