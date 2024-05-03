SELECT
    s.supplier_name
FROM
    branch AS b
JOIN 
    shipment AS sh
ON
    b.branch_name = sh.branch_name
JOIN 
    supplier AS s
ON
    s.supplier_name = sh.supplier_name
WHERE
    b.branch_name = 'number 1';
