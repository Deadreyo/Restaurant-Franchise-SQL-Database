SELECT
    branch_name,
    COUNT(*)
FROM
    Branch_telephone
GROUP BY
    branch_name;