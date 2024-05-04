SELECT
    branch_name,
    COUNT(*)
FROM
    branch_telephone
GROUP BY
    branch_name;