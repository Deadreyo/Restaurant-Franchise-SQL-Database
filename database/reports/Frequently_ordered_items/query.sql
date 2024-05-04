SELECT name, mutual_count
FROM (
    SELECT has.menu_item_id, COUNT(has.menu_item_id) AS mutual_count
    FROM (
        SELECT menu_item.menu_item_id, SUM(has.quantity) AS total_quantity
        FROM menu_item
        JOIN has ON menu_item.menu_item_id = has.menu_item_id
        JOIN Orders ON Has.order_id = Orders.order_id
        WHERE Orders.date_and_time BETWEEN '2024-03-01' AND '2024-03-30'    
        GROUP BY menu_item.menu_item_id
        ORDER BY total_quantity DESC
        LIMIT 1
    ) AS most_ordered
    JOIN has AS subset_orders ON subset_orders.menu_item_id = most_ordered.menu_item_id
    JOIN has ON has.order_id = subset_orders.order_id
    GROUP BY has.menu_item_id
) AS mutual
JOIN menu_item ON menu_item.menu_item_id = mutual.menu_item_id
ORDER BY mutual_count DESC;