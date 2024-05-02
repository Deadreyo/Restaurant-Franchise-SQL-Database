-- cashier

CREATE TABLE cashier (
    employee_ssn CHAR(9),
    transaction_count INTEGER,
    PRIMARY KEY (employee_ssn)
);

-- chef

CREATE TABLE chef (
    employee_ssn CHAR(9),
    orders_count SMALLINT,
    PRIMARY KEY (employee_ssn)
);

-- customer

CREATE TABLE customer(
    phone CHAR(16),
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    city VARCHAR(30),
    street VARCHAR(40),
    building_number SMALLINT,
    apartment_number SMALLINT,
    PRIMARY KEY(phone)
);

-- delivery_guy

CREATE TABLE delivery_guy (
    employee_ssn CHAR(9),
    bike_type VARCHAR(15) NOT NULL,
    driving_license CHAR(14) UNIQUE NOT NULL,
    delivery_count SMALLINT,
    PRIMARY KEY (employee_ssn)
);

-- employee

CREATE TABLE employee (
  first_name VARCHAR(15) NOT NULL, 
  last_name VARCHAR(15) NOT NULL, 
  employee_ssn CHAR(9), 
  date_of_birth DATE NOT NULL, 
  age SMALLINT NOT NULL, 
  salary INTEGER NOT NULL, 
  hiring_date DATE NOT NULL, 
  experience_years SMALLINT, 
  role VARCHAR(15) NOT NULL, 
  branch_name VARCHAR(20) NOT NULL, 
  PRIMARY KEY (employee_ssn)
);

-- manager

CREATE TABLE manager (
    employee_ssn  CHAR(9),
    sector VARCHAR(20) NOT NULL,
    branch_name VARCHAR(20),
    PRIMARY KEY (employee_ssn)
);

-- Menu_Item

CREATE TABLE Menu_item(
    menu_item_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    category VARCHAR(20) NOT NULL,
    size ENUM('Small', 'Medium', 'Large'),
    price FLOAT NOT NULL,
    PRIMARY KEY(menu_item_id)
);

-- Transaction

CREATE TABLE Transaction (
    order_id INT,
    payment_method ENUM(
        'cash',
        'credit card',
        'debit card',
        'online payment'
    ) NOT NULL,
    date_and_time DATETIME NOT NULL,
    feedback SMALLINT CHECK
        (
            feedback >= 0 AND feedback <= 5
        ),
    amount_with_discount FLOAT,
    PRIMARY KEY(order_id)
);

