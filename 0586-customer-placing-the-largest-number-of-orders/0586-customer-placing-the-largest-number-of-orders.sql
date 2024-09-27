# Write your MySQL query statement below

SELECT customer_number
FROM (
    SELECT customer_number, COUNT(order_number) AS cnt
    FROM Orders
    GROUP BY customer_number
) AS T1
WHERE cnt = (
    SELECT MAX(cnt)
    FROM (
        SELECT customer_number, COUNT(order_number) AS cnt
        FROM Orders
        GROUP BY customer_number
    ) AS T2
);





