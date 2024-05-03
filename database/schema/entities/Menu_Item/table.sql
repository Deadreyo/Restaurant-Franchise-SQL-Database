CREATE TABLE Menu_item(
    menu_item_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    category ENUM('main dish', 'appetizer', 'salads', 'hot drinks', 'cold drinks', 'desserts') NOT NULL,
    size ENUM('small', 'medium', 'large') NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY(menu_item_id),
    UNIQUE (name, size)
);