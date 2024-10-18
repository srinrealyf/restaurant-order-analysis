SELECT COUNT(order_id) AS Total_Orders
FROM (
    SELECT order_id
    FROM order_details
    GROUP BY order_id
    HAVING COUNT(item_id) > 12
) AS subquery;
