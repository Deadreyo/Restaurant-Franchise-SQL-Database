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