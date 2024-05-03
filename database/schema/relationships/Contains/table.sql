CREATE TABLE Contains(
    ingredient_name VARCHAR(20),
    menu_item_id INT NOT NULL,
    quantity_used INT,
    PRIMARY KEY(ingredient_name, menu_item_id)
);