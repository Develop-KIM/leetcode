SELECT p.product_name, unit
FROM products p
INNER JOIN (
    SELECT product_id, SUM(unit) as unit
    FROM orders
    WHERE EXTRACT(YEAR_MONTH FROM order_date) = '202002'
    GROUP BY product_id
    HAVING SUM(unit) >= 100
) o 
ON p.product_id = o.product_id;