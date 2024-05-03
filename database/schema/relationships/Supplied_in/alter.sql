ALTER TABLE Supplied_in
	ADD CONSTRAINT FOREIGN KEY (ingredient_name) REFERENCES Ingredient(ingredient_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE Supplied_in
	ADD CONSTRAINT FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;
