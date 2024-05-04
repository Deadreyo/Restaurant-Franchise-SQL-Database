
SELECT Ingredient.ingredient_name, Branch.branch_name, Supplier.supplier_name, date_and_time, quantity, price, quantity * price AS total_cost
FROM Ingredient, Supplied_in, Shipment, Branch, Supplier
WHERE Ingredient.ingredient_name = Supplied_in.ingredient_name AND
      Supplied_in.shipment_id = Shipment.shipment_id AND
      Shipment.branch_name = Branch.branch_name AND
      Shipment.supplier_name = Supplier.supplier_name AND
      date_and_time BETWEEN '2020-01-01' AND '2025-12-31'
ORDER BY Ingredient.ingredient_name, Branch.branch_name, Shipment.supplier_name
;
