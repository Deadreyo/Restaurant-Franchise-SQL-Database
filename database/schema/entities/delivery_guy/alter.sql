ALTER TABLE delivery_guy
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;