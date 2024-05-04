CREATE VIEW Menu_of_branch AS
SELECT Menu_item.name, Menu_item.price
FROM Menu_item
JOIN Available_in ON Available_in.menu_item_id = Menu_item.menu_item_id
JOIN Branch ON Branch.branch_name = Available_in.branch_name
WHERE Branch.branch_name = "abdo basha"
