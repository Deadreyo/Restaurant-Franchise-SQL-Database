CREATE VIEW Chef_can_use_tools AS
SELECT first_name, last_name, GROUP_CONCAT(tool_name) as tools_used
FROM Can_use, Employee
WHERE Can_use.employee_ssn = Employee.employee_ssn
GROUP BY Employee.employee_ssn
;