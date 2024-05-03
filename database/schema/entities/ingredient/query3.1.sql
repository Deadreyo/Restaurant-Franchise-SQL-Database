SELECT 
    i.ingredient_name,
    t.tool_name
FROM 
    Orders o
JOIN 
    owns o1 ON o.branch_name = o1.branch_name
JOIN 
    tool t ON o1.tool_name = t.tool_name
JOIN 
    stores s ON o.branch_name = s.branch_name
JOIN 
    ingredient i ON s.ingredient_name = i.ingredient_name
WHERE 
    o.order_id = '1';
