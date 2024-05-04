CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT,
    date_and_time DATETIME NOT NULL,
    total_amount FLOAT NOT NULL,
    general_notes TEXT,
    customer_phone CHAR(12),
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
