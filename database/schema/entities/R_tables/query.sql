SELECT
    branch_name,
    COUNT(*)
FROM
    R_tables
GROUP BY
    branch_name;