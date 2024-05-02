CREATE TABLE delivery_guy (
    employee_ssn CHAR(9),
    bike_type VARCHAR(15) NOT NULL,
    driving_license CHAR(14) UNIQUE NOT NULL,
    delivery_count SMALLINT,
    PRIMARY KEY (employee_ssn)
);