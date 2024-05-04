SELECT
    b.branch_name,
    s.supplier_name
FROM
    Branch AS b
JOIN Shipment AS sh
ON
    b.branch_name = sh.branch_name
JOIN Supplier AS s
ON
    s.supplier_name = sh.supplier_name
WHERE
    b.branch_name = 'Main Branch';