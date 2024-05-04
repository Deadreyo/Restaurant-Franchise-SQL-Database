CREATE TABLE owns(
    tool_name VARCHAR(20) NOT NULL,
    branch_name VARCHAR(20),
    quantity TINYINT,
    PRIMARY KEY(branch_name, tool_name)
);