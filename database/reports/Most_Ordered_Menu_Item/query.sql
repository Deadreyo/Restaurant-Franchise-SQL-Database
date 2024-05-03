-- The most ordered menu item last year
SELECT
    mi.name,
    SUM(h.quantity) AS total_quantity
FROM
    Menu_item mi
JOIN Has h ON
    mi.menu_item_id = h.menu_item_id
JOIN Orders o ON
    h.order_id = o.order_id
WHERE
    o.date_and_time BETWEEN '2023-01-01' AND '2023-12-30'
GROUP BY
    mi.name
ORDER BY
    total_quantity
DESC
    ;