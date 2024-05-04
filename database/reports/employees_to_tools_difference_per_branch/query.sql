
SELECT Branch.branch_name, Owns.tool_name, Owns.quantity as tool_quantity, COUNT(Employee.employee_ssn) as num_of_employees
FROM Branch, Owns, Employee, Can_use
WHERE Branch.branch_name = Owns.branch_name AND
    Owns.tool_name = Can_use.tool_name AND
    Can_use.employee_ssn = Employee.employee_ssn AND
    Employee.branch_name = Branch.branch_name
GROUP BY Branch.branch_name, Owns.tool_name, Owns.quantity
;