SELECT
    o.branch_name,
    i.ingredient_name,
    t.tool_name
FROM
    Orders o
JOIN Branch b ON
    o.branch_name = b.branch_name
JOIN Owns o1 ON
    o.branch_name = o1.branch_name
JOIN Tool t ON
    o1.tool_name = t.tool_name
JOIN Stores s ON
    o.branch_name = s.branch_name
JOIN Ingredient i ON
    s.ingredient_name = i.ingredient_name
WHERE
    o.order_id = 1;