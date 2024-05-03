CREATE TABLE Supplied_in(
    ingredient_name VARCHAR(20),
    shipment_id INT,
    quantity INT,
    PRIMARY KEY(ingredient_name, shipment_id)
);