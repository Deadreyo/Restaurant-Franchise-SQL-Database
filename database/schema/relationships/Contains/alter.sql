ALTER TABLE Contains
	ADD CONSTRAINT FOREIGN KEY (ingredient_name) REFERENCES Ingredient(ingredient_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE Contains
	ADD CONSTRAINT FOREIGN KEY (menu_item_id) REFERENCES Menu_item(menu_item_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;