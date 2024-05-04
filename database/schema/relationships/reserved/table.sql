CREATE TABLE Reserved(
    order_id INTEGER,
    table_no INT,
    branch_name VARCHAR(20),
    PRIMARY KEY(
        branch_name,
        table_no,
        order_id
    )
);