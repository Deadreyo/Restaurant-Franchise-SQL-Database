CREATE VIEW order_address AS
SELECT E.first_name,E.last_name,C.phone,C.first_name,C.last_name,D.address
FROM delivery_guy AS G
JOIN delivery AS D ON G.employee_ssn = D.employee_ssn
JOIN employee AS E ON G.employee_ssn = E.ssn
JOIN orders AS O ON D.order_id = O.order_id
JOIN customer AS C ON O.customer_phone = C.phone;