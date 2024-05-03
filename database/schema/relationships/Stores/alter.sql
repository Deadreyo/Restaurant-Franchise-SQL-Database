ALTER TABLE
    Stores ADD FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY(ingredient_name) REFERENCES Ingredient(ingredient_name) ON DELETE CASCADE ON UPDATE CASCADE;