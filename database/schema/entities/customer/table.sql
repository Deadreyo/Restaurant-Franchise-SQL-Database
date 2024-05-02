CREATE TABLE customer(
    phone CHAR(16),
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    city VARCHAR(30),
    street VARCHAR(40),
    building_number SMALLINT,
    apartment_number SMALLINT,
    PRIMARY KEY(phone)
);