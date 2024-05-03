 ALTER TABLE Transaction
	ADD CONSTRAINT FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    ADD FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE SET NULL
;