CREATE VIEW BranchesWithIngredients AS
(
    SELECT branch_name, ingredient_name, available_quantity AS quantity, 'Extra Ingredients' AS category
    FROM Stores
    WHERE available_quantity > 70
)
UNION
(
    SELECT branch_name, ingredient_name, available_quantity AS quantity, 'Less Ingredients' AS category
    FROM Stores
    WHERE available_quantity < 20
);
