-- View branches address and telephone
CREATE VIEW Branch_Phone AS SELECT
    branch_address,
    telephone
FROM
    Branch;
