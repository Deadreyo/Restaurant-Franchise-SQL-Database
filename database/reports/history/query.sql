SELECT c.customer_phone,c.first_name,c.last_name,o.order_id,o.date_and_time,o.total_amount
FROM Customer AS c 
JOIN Orders AS o ON c.customer_phone = o.customer_phone
WHERE c.customer_phone="+20 125 036 1267"
ORDER BY o.order_id

