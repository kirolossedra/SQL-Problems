# Write your MySQL query statement below

select name, balance 
from (
select account, sum(amount) as balance 
from Transactions 
group by account ) as b

JOIN Users as u

on u.account = b.account
where balance>10000



