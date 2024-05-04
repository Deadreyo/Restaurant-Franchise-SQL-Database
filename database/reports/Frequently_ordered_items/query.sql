SELECT name, mutual_count
FROM (
    SELECT Has.menu_item_id, COUNT(Has.menu_item_id) AS mutual_count
    FROM (
        SELECT Menu_item.menu_item_id, SUM(Has.quantity) AS total_quantity
        FROM Menu_item
        JOIN Has ON Menu_item.menu_item_id = Has.menu_item_id
        JOIN Orders ON Has.order_id = Orders.order_id
        WHERE Orders.date_and_time BETWEEN '2024-03-01' AND '2024-03-30'    
        GROUP BY Menu_item.menu_item_id
        ORDER BY total_quantity DESC
        LIMIT 1
    ) AS Most_ordered
    JOIN Has AS Subset_orders ON Subset_orders.menu_item_id = Most_ordered.menu_item_id
    JOIN Has ON Has.order_id = Subset_orders.order_id
    GROUP BY Has.menu_item_id
) AS Mutual
JOIN Menu_item ON Menu_item.menu_item_id = Mutual.menu_item_id
ORDER BY mutual_count DESC;
