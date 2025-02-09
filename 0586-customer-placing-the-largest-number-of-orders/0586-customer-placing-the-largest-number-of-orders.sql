SELECT customer_number
FROM (
    SELECT customer_number,
    RANK() OVER(ORDER BY order_counts DESC) AS RNK
    FROM (
        SELECT customer_number,
        COUNT(customer_number) AS order_counts
        FROM Orders
        GROUP BY customer_number   
    ) a
) b
WHERE RNK = 1;