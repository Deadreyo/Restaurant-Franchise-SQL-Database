CREATE TABLE Menu_item(
    menu_item_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    category VARCHAR(20) NOT NULL,
    size ENUM('Small', 'Medium', 'Large'),
    price FLOAT NOT NULL,
    PRIMARY KEY(menu_item_id)
);