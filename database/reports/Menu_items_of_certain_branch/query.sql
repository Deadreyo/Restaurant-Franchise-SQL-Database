-- Write the actual logic of the query here

SELECT Menu_item.name, Menu_item.size
FROM Menu_item
WHERE Menu_item.menu_item_id IN (
    SELECT menu_item_id
    FROM Available_in
    WHERE branch_name = "nasr city"
)
