CREATE VIEW Orders_has_items AS
SELECT order_id, name, size, price, quantity, price * quantity as total_price
FROM Has, Menu_item
WHERE Has.menu_item_id = Menu_item.menu_item_id
;