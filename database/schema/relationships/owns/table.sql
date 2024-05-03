CREATE TABLE reserved(
    order_id  INTEGER ,
    table_no INTEGER,
    branch_name VARCHAR(20),
    PRIMARY KEY(branch_name, table_no,order_id)
);