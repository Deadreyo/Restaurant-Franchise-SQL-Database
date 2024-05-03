CREATE TABLE Stores(
    branch_name VARCHAR(50) NOT NULL,
    ingredient_name VARCHAR(50) NOT NULL,
    available_quantity FLOAT NOT NULL,
    PRIMARY KEY(branch_name, ingredient_name)
);