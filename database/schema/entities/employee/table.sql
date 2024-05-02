CREATE TABLE employee(
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    employee_ssn CHAR(9),
    date_of_birth DATE NOT NULL,
    age SMALLINT NOT NULL,
    age SMALLINT NOT NULL,
    salary INTEGER NOT NULL,
    hiring_date DATE NOT NULL,
    experience_years SMALLINT,
    role VARCHAR(15) NOT NULL,
    branch_name VARCHAR(20) NOT NULL,
    PRIMARY KEY(employee_ssn)
);