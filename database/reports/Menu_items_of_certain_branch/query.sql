CREATE VIEW menu_of_branch AS
SELECT menu_item.name, menu_item.price
FROM menu_item
JOIN available_in ON available_in.menu_item_id = menu_item.menu_item_id
JOIN Branch ON Branch.branch_name = available_in.branch_name
WHERE Branch.branch_name = "abdo basha"