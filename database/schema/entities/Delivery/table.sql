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
