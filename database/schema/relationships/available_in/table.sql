CREATE TABLE available_in(
    branch_name VARCHAR(20),
    menu_item_id INT NOT NULL,
    PRIMARY KEY(branch_name, menu_item_id)
);