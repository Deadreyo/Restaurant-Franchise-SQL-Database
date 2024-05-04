CREATE TABLE R_tables(
    branch_name VARCHAR(20),
    table_no INT NOT NULL,
    capacity INT,
    PRIMARY KEY(branch_name, table_no)
);