CREATE TABLE branch_telephone(
    branch_name VARCHAR(20),
    telephone CHAR(11) NOT NULL,
    PRIMARY KEY(branch_name, telephone)
);