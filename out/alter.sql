-- cashier

ALTER TABLE cashier
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- chef

ALTER TABLE chef
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- delivery_guy

ALTER TABLE delivery_guy
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- employee

ALTER TABLE employee
	ADD CONSTRAINT FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
;

-- manager

ALTER TABLE manager
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;
ALTER TABLE manager
	ADD CONSTRAINT FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
;

-- Transaction

 ALTER TABLE Transaction
	ADD CONSTRAINT FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

