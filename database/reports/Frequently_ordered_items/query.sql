-- Write the actual logic of the query here

SELECT Menu_item.menu_item_id, SUM(Has.quantity) AS total_mutual_quantity
FROM Menu_item
JOIN Has ON Menu_item.menu_item_id = Has.menu_item_id
JOIN Orders ON Has.order_id = Orders.order_id
WHERE menu_item_id IN (
    SELECT order_id
    FROM Orders
    WHERE menu_item_id = (
        SELECT menu_item_id
        FROM (
            SELECT Menu_item.menu_item_id, SUM(Has.quantity) AS total_quantity
            FROM Menu_item
            JOIN Has ON Menu_item.menu_item_id = Has.menu_item_id
            JOIN Orders ON Has.order_id = Orders.order_id
            WHERE Orders.date_and_time BETWEEN '2023-01-01' AND '2023-12-30'
            GROUP BY Menu_item.menu_item_id;
        )
        WHERE total_quantity = (
            SELECT MAX(total_quantity) FROM (
                SELECT Menu_item.menu_item_id, SUM(Has.quantity) AS total_quantity
                FROM Menu_item
                JOIN Has ON Menu_item.menu_item_id = Has.menu_item_id
                JOIN Orders ON Has.order_id = Orders.order_id
                WHERE Orders.date_and_time BETWEEN '2023-01-01' AND '2023-12-30'
                GROUP BY Menu_item.menu_item_id;
            )
        )
    )
) AND Orders.date_and_time BETWEEN '2023-01-01' AND '2023-12-30'
GROUP BY Menu_item.menu_item_id;
