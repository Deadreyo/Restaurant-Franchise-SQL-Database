SELECT
    t.branch_name,
    t.table_no
FROM
    tabless t
LEFT JOIN reserved r ON
    r.branch_name = t.branch_name AND r.table_no = t.table_no
WHERE
    r.branch_name IS NULL AND r.table_no IS NULL