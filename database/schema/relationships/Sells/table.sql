CREATE TABLE Sells(
    ingredient_name VARCHAR(20),
    supplier_name VARCHAR(10),
    price DECIMAL(10, 2),
    PRIMARY KEY(ingredient_name, supplier_name)
);