CREATE TABLE Supplier(
    supplier_name VARCHAR(10), 
    location VARCHAR(10) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    telephone CHAR(11) NOT NULL,
    PRIMARY KEY (supplier_name)
);