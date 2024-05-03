CREATE TABLE Cooks (
    employee_ssn CHAR(9),
    order_id INT,
    PRIMARY KEY (employee_ssn, order_id)
);