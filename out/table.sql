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



