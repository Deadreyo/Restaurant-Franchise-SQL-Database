-- Write the actual logic of the query here
SELECT b.branch_name, rv.table_no, COUNT(*) AS reservation_count
FROM Reserved rv
JOIN Table t ON rv.table_no = t.table_no AND rv.branch_name = t.branch_name
JOIN Branch b ON t.branch_name = b.branch_name
GROUP BY b.branch_name, rv.table_no
HAVING COUNT(*) = (
    SELECT MAX(reservation_count)
    FROM (
        SELECT branch_name, table_no, COUNT(*) AS reservation_count
        FROM Reserved rv
        JOIN Table t ON rv.table_no = t.table_no AND rv.branch_name = t.branch_name
        JOIN Branch b ON t.branch_name = b.branch_name
        GROUP BY branch_name, table_no
    ) AS counts
    WHERE counts.branch_name = b.branch_name
)