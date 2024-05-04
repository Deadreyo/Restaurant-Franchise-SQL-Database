CREATE TABLE Supplied_in(
    ingredient_name VARCHAR(20),
    shipment_id INT,
    quantity INT NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY(ingredient_name, shipment_id)
);