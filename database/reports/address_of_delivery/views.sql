CREATE VIEW order_address AS
SELECT E.first_name AS employee_first_name, E.last_name AS employee_last_name, O.order_id, C.customer_phone, C.first_name AS customer_first_name, C.last_name AS customer_last_name, D.address
FROM Delivery_guy AS G
JOIN Delivery AS D ON G.employee_ssn = D.employee_ssn
JOIN Employee AS E ON G.employee_ssn = E.employee_ssn
JOIN Orders AS O ON D.order_id = O.order_id
JOIN Customer AS C ON O.customer_phone = C.customer_phone
WHERE E.first_name = 'Mohamed' AND E.last_name = 'Gamal'
ORDER BY O.order_id;
