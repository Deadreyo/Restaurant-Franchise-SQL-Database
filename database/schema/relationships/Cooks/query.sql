SELECT first_name, last_name, order_id
FROM Cooks, Employee
WHERE Cooks.employee_ssn = Employee.employee_ssn
;