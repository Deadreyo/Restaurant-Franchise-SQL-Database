CREATE TABLE Discounts(
    menu_item_id INT NOT NULL,
    offer_id INT NOT NULL,
    PRIMARY KEY(menu_item_id, offer_id)
);