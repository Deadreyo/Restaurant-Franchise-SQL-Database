CREATE TABLE Reservation(
    order_id INT,
    number_of_guests INT NOT NULL,
    date_and_time DATETIME NOT NULL,
    PRIMARY KEY(order_id)
);