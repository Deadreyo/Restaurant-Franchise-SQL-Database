SELECT c.customer_phone,c.first_name,c.last_name,h.order_id,mi.name,h.quantity,h.notes,mi.size,mi.price
FROM Customer AS c 
JOIN Orders AS o ON c.customer_phone = o.customer_phone
JOIN Has AS h ON h.order_id = o.order_id
JOIN Menu_item AS mi ON mi.menu_item_id = h.menu_item_id
WHERE c.customer_phone="+20 102 886 3371"
ORDER BY h.order_id,mi.name

