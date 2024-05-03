ALTER TABLE
    Orders ADD COLUMN customer_phone CHAR(12),
    ADD COLUMN branch_name VARCHAR(20),
    ADD CONSTRAINT  FOREIGN KEY(customer_phone) REFERENCES Customer(customer_phone) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;