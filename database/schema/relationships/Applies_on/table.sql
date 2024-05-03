CREATE TABLE Applies_on(
    order_id INT NOT NULL,
    offer_id INT NOT NULL,
    PRIMARY KEY(order_id, offer_id)
);