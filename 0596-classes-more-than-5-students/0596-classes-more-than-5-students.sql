# Write your MySQL query statement below

select class from(
select class, count(student) as cnt from Courses
GROUP by class) as T1
WHERE cnt>=5
