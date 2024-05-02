CREATE TABLE manager (
    employee_ssn  CHAR(9),
    sector VARCHAR(20) NOT NULL,
    branch_name VARCHAR(20),
    PRIMARY KEY (employee_ssn)
);