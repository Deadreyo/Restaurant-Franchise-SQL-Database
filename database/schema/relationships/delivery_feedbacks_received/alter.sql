ALTER TABLE delivery_feedbacks_received
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;