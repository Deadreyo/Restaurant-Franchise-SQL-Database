SELECT branch_name, table_no, reservation_count
FROM (
    SELECT 
        b.branch_name, 
        rv.table_no, 
        COUNT(*) AS reservation_count,
        ROW_NUMBER() OVER (PARTITION BY b.branch_name ORDER BY COUNT(*) DESC) AS rank
    FROM Reserved rv
    JOIN R_tables t ON rv.table_no = t.table_no AND rv.branch_name = t.branch_name
    JOIN Branch b ON t.branch_name = b.branch_name
    GROUP BY b.branch_name, rv.table_no
) AS ranked_tables
WHERE rank = 1;
