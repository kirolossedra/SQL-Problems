select name from (SELECT name, sum(status_tag) as sum1 
FROM (
SELECT name, 0 as status_tag from(
SELECT 
        
        a.name,
        b.*            
    FROM 
        SalesPerson a
    LEFT JOIN 
        Orders b ON a.sales_id = b.sales_id


) as T1

WHERE com_id <> (SELECT 
    CASE 
        WHEN (SELECT COUNT(*) FROM Company where name='RED') > 0 THEN 
            (select com_id from Company  where name='RED')
        ELSE 
            -1
    END AS com_id

FROM Company
limit 1)  or com_id is null


union all



SELECT name, 1 as status_tag from(
SELECT 
        
        a.name,
        b.*            
    FROM 
        SalesPerson a
    LEFT JOIN 
        Orders b ON a.sales_id = b.sales_id


) as T1

WHERE com_id = (SELECT 
    CASE 
        WHEN (SELECT COUNT(*) FROM Company where name='RED') > 0 THEN 
            (select com_id from Company  where name='RED')
        ELSE 
            -1
    END AS com_id

FROM Company
limit 1) 


) AS T3

GROUP BY name) as t4
where sum1 = 0;