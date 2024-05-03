ALTER TABLE Makes
	ADD CONSTRAINT FOREIGN KEY (branch_name) REFERENCES Branch(branch_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    ADD FOREIGN KEY (offer_id) REFERENCES Offer(offer_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;