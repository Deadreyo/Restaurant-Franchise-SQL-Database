CREATE TABLE delivery_feedbacks_received (
    employee_ssn CHAR(9),
    feedback SMALLINT,
    PRIMARY KEY (employee_ssn,feedback)
);