-- branch

CREATE TABLE Branch(
    branch_name VARCHAR(20),
    branch_address VARCHAR(200),
    PRIMARY KEY(branch_name)
);

-- cashier

CREATE TABLE Cashier (
    employee_ssn CHAR(9),
    transaction_count INTEGER,
    PRIMARY KEY (employee_ssn)
);

-- chef

CREATE TABLE Chef (
    employee_ssn CHAR(9),
    orders_count SMALLINT,
    PRIMARY KEY (employee_ssn)
);

-- customer

CREATE TABLE Customer(
    customer_phone CHAR(16),
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    city VARCHAR(30),
    street VARCHAR(40),
    building_number SMALLINT,
    apartment_number SMALLINT,
    PRIMARY KEY(customer_phone)
);

-- Delivery

CREATE TABLE Delivery(
    order_id INT,
    statuss ENUM('Pending', 'On the Way', 'Delivered') NOT NULL,
    delivery_fee FLOAT NOT NULL,
    employee_ssn VARCHAR(9),
    feedback SMALLINT CHECK
        (feedback >= 0 AND feedback <= 5),
    address VARCHAR(250) NOT NULL,
    date_and_time DATETIME,
    PRIMARY KEY(order_id)
);


-- delivery_guy

CREATE TABLE Delivery_guy (
    employee_ssn CHAR(9),
    bike_type VARCHAR(15) NOT NULL,
    driving_license CHAR(14) UNIQUE NOT NULL,
    delivery_count SMALLINT,
    PRIMARY KEY (employee_ssn)
);

-- Discounts

CREATE TABLE Discounts(
    menu_item_id INT NOT NULL,
    offer_id INT NOT NULL,
    PRIMARY KEY(menu_item_id, offer_id)
);

-- employee

CREATE TABLE Employee(
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
    PRIMARY KEY(employee_ssn)
);

-- ingredient

CREATE TABLE Ingredient(
    ingredient_name VARCHAR(20),
    PRIMARY KEY(ingredient_name)
);

-- manager

CREATE TABLE Manager (
    employee_ssn  CHAR(9),
    sector VARCHAR(20) NOT NULL,
    branch_name VARCHAR(20),
    PRIMARY KEY (employee_ssn)
);

-- Menu_Item

CREATE TABLE Menu_item(
    menu_item_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    category ENUM('main dish', 'appetizer', 'salads', 'hot drinks', 'cold drinks', 'desserts') NOT NULL,
    size ENUM('small', 'medium', 'large') NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY(menu_item_id),
    UNIQUE (name, size)
);

-- Offer

CREATE TABLE Offer(
    offer_id INT,
    type ENUM(
        'Coupon',
        'Discount',
        'Seasonal Deal',
        'Combo'
    ) NOT NULL,
    discount_percentage FLOAT NOT NULL,
    description VARCHAR(250) NOT NULL,
    coupon_code VARCHAR(15) UNIQUE,
    conditions TEXT,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP CHECK
        (start_time < end_time),
        PRIMARY KEY(offer_id)
);

-- Orders

CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT,
    date_and_time DATETIME NOT NULL,
    total_amount FLOAT NOT NULL,
    general_notes TEXT,
    customer_phone CHAR(16),
    branch_name VARCHAR(20),
    statuss ENUM(
        'Pending',
        'Completed',
        'On the Way',
        'Received',
        'Cancelled'
    ) NOT NULL,
    is_takeaway BOOLEAN NOT NULL,
    PRIMARY KEY(order_id)
);


-- reservation

CREATE TABLE Reservation(
    order_id INT,
    number_of_guests INT NOT NULL,
    date_and_time DATETIME NOT NULL,
    PRIMARY KEY(order_id)
);

-- R_tables

CREATE TABLE R_tables(
    branch_name VARCHAR(20),
    table_no INT ,
    capacity INT,
    PRIMARY KEY(branch_name, table_no)
);

-- Shipment

CREATE TABLE Shipment(
    shipment_id INT,
    date_and_time DATE,
    STATUS VARCHAR(10) NOT NULL,
    supplier_name VARCHAR(10),
    branch_name VARCHAR(20),
    PRIMARY KEY(shipment_id)
);

-- Supplier

CREATE TABLE Supplier(
    supplier_name VARCHAR(10), 
    location VARCHAR(20) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    telephone CHAR(11) NOT NULL,
    PRIMARY KEY (supplier_name)
);

-- Tool

CREATE TABLE Tool (
    tool_name VARCHAR(20) NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (tool_name)
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
    employee_ssn CHAR(9),
    PRIMARY KEY(order_id)
);

-- Applies_on

CREATE TABLE Applies_on(
    order_id INT NOT NULL,
    offer_id INT NOT NULL,
    PRIMARY KEY(order_id, offer_id)
);

-- available_in

CREATE TABLE Available_in(
    branch_name VARCHAR(20),
    menu_item_id INT NOT NULL,
    PRIMARY KEY(branch_name, menu_item_id)
);

-- branch_telephone

CREATE TABLE Branch_telephone(
    branch_name VARCHAR(20),
    telephone CHAR(11) NOT NULL,
    PRIMARY KEY(branch_name, telephone)
);

-- Can_use

CREATE TABLE Can_use (
    employee_ssn CHAR(9),
    tool_name VARCHAR(20),
    PRIMARY KEY (employee_ssn, tool_name)
);

-- cashier_feedbacks_received

CREATE TABLE Cashier_feedbacks_received (
    employee_ssn CHAR(9),
    feedback SMALLINT CHECK
        (
            feedback >= 0 AND feedback <= 5
        ),
    PRIMARY KEY (employee_ssn,feedback)
);

-- Contains

CREATE TABLE Contains(
    ingredient_name VARCHAR(20),
    menu_item_id INT NOT NULL,
    quantity_used INT,
    PRIMARY KEY(ingredient_name, menu_item_id)
);

-- Cooks

CREATE TABLE Cooks (
    employee_ssn CHAR(9),
    order_id INT,
    PRIMARY KEY (employee_ssn, order_id)
);

-- cuisines

CREATE TABLE Cuisines (
    employee_ssn CHAR(9),
    cuisine VARCHAR(20),
    PRIMARY KEY (employee_ssn,cuisine)
);

-- delivery_feedbacks_received

CREATE TABLE Delivery_feedbacks_received (
    employee_ssn CHAR(9),
    feedback SMALLINT CHECK
        (
            feedback >= 0 AND feedback <= 5
        ),
    PRIMARY KEY (employee_ssn,feedback)
);

-- Has

CREATE TABLE Has (
    order_id INT,
    menu_item_id INT,
    quantity TINYINT NOT NULL,
    notes TEXT,
    PRIMARY KEY (order_id, menu_item_id)
);

-- Made_with

CREATE TABLE Made_with (
    tool_name VARCHAR(20),
    menu_item_id INT,
    PRIMARY KEY (tool_name, menu_item_id)
);

-- Makes

CREATE TABLE Makes (
    branch_name VARCHAR(20),
    offer_id INT,
    PRIMARY KEY (branch_name, offer_id)
);

-- owns

CREATE TABLE Owns(
    tool_name VARCHAR(20) NOT NULL,
    branch_name VARCHAR(20),
    quantity TINYINT,
    PRIMARY KEY(branch_name, tool_name)
);

-- reserved

CREATE TABLE Reserved(
    order_id INTEGER,
    table_no INT,
    branch_name VARCHAR(20),
    PRIMARY KEY(
        branch_name,
        table_no,
        order_id
    )
);

-- Sells

CREATE TABLE Sells(
    ingredient_name VARCHAR(20),
    supplier_name VARCHAR(10),
    price DECIMAL(10, 2),
    PRIMARY KEY(ingredient_name, supplier_name)
);

-- Stores

CREATE TABLE Stores(
    branch_name VARCHAR(50) NOT NULL,
    ingredient_name VARCHAR(50) NOT NULL,
    available_quantity FLOAT NOT NULL,
    PRIMARY KEY(branch_name, ingredient_name)
);

-- Supplied_in

CREATE TABLE Supplied_in(
    ingredient_name VARCHAR(20),
    shipment_id INT,
    quantity INT NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY(ingredient_name, shipment_id)
);

