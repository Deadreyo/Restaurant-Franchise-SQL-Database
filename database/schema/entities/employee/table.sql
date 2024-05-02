CREATE TABLE employee (
  first_name VARCHAR(15) NOT NULL, 
  last_name VARCHAR(15) NOT NULL, 
  employee_snn CHAR(9), 
  date_of_birth DATE NOT NULL, 
  age SMALLINT NOT NULL  CHECK (DATEDIFF(CURRENT_DATE, date_of_birth) / 365 >= 18 AND DATEDIFF(CURRENT_DATE, date_of_birth) / 365 < 65), 
  salary INTEGER NOT NULL, 
  hiring_date DATE NOT NULL, 
  experience_years SMALLINT, 
  role VARCHAR(15) NOT NULL, 
  branch_name VARCHAR(20) NOT NULL, 
  PRIMARY KEY (employee_ssn)
);