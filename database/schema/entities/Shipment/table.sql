CREATE TABLE Shipment(
    shipment_id INT,
    date_and_time DATE,
    STATUS VARCHAR(10) NOT NULL,
    supplier_name VARCHAR(10),
    branch_name VARCHAR(20),
    PRIMARY KEY(shipment_id)
);