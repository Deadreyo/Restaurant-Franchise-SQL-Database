CREATE TABLE Has (
    order_id INT,
    menu_item_id INT,
    quantity TINYINT NOT NULL,
    notes TEXT,
    PRIMARY KEY (order_id, menu_item_id)
);