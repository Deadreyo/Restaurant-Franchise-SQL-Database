ALTER TABLE
    Reserved ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE
    Reserved ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE;
