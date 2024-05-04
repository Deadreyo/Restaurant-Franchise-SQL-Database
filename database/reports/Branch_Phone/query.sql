-- View branches address and telephone
CREATE VIEW Branch_Phone AS 
SELECT
    b.branch_address,
    bt.telephone
FROM
    Branch b
JOIN
    Branch_telephone bt ON b.branch_name = bt.branch_name;
