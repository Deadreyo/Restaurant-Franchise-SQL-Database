CREATE TABLE Delivery_feedbacks_received (
    employee_ssn CHAR(9),
    feedback SMALLINT CHECK
        (
            feedback >= 0 AND feedback <= 5
        ),
    PRIMARY KEY (employee_ssn,feedback)
);