CREATE VIEW Tools_used_in_items AS
SELECT Menu_item.name as menu_item, GROUP_CONCAT(tool_name) as tools_used
FROM Made_with, Menu_item
WHERE Made_with.menu_item_id = Menu_item.menu_item_id
GROUP BY Menu_item.menu_item_id
;