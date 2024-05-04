SELECT
    s.supplier_name,
    s.location,
    i.ingredient_name
FROM
    Ingredient AS i
JOIN Sells AS a
ON
    i.ingredient_name = a.ingredient_name
JOIN Supplier AS s
ON
    s.supplier_name = a.supplier_name;