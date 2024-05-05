SELECT
	o.branch_name,
    ingredient_name,
    t.tool_name
FROM
    `stores`, Owns o1 , Tool t, orders o
WHERE
    o.branch_name = o1.branch_name AND o1.tool_name = t.tool_name AND o.order_id = "1"
    
    
    
    

