CREATE VIEW Employees_of_all_branches AS
SELECT Branch.branch_name, first_name, last_name, role, hiring_date, salary
FROM Branch LEFT OUTER JOIN Employee ON Branch.branch_name = Employee.branch_name
ORDER BY Branch.branch_name ASC, first_name ASC, last_name ASC
;