ALTER TABLE Delivery_feedbacks_received
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;