# Write your MySQL query statement below



Select make_name, date_id, count(distinct lead_id) as unique_leads, count(distinct partner_id) as unique_partners
from  DailySales
GROUP BY make_name,date_id;
