SELECT
    s.supplier_name,
    s.location,
    i.ingredient_name,
    i.total_quantity,
    a.price
FROM
    ingredient AS i
JOIN sells AS a
ON
    i.ingredient_name = a.ingredient_name
JOIN supplier AS s
ON
    s.supplier_name = a.supplier_name;