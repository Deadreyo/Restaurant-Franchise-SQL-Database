-- cashier

ALTER TABLE cashier
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- chef

ALTER TABLE cuisine
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Delivery

ALTER TABLE
    Delivery ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD COLUMN employee_ssn VARCHAR(9),
    ADD CONSTRAINT FOREIGN KEY(employee_ssn) REFERENCES Delivery_guy(employee_ssn) ON UPDATE CASCADE ON DELETE CASCADE;

-- delivery_guy

ALTER TABLE delivery_feedbacks_received
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Discounts

ALTER TABLE
    Discounts ADD CONSTRAINT FOREIGN KEY(menu_item_id) REFERENCES Menu_item(menu_item_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(offer_id) REFERENCES Offer(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;

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

-- Orders

ALTER TABLE
    Orders ADD COLUMN customer_phone CHAR(12),
    ADD COLUMN branch_name VARCHAR(20),
    ADD CONSTRAINT  FOREIGN KEY(customer_phone) REFERENCES Customer(customer_phone) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;

-- Transaction

 ALTER TABLE Transaction
	ADD CONSTRAINT FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Applies_on

ALTER TABLE
    Applies_on ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(offer_id) REFERENCES Offer(offer_id) ON UPDATE CASCADE ON DELETE CASCADE
    ;

-- cashier_feedbacks_received

ALTER TABLE cashier_feedbacks_received
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- cuisines

ALTER TABLE cuisines
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- delivery_feedbacks_received

ALTER TABLE delivery_feedbacks_received
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Stores

ALTER TABLE
    Stores ADD FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY(ingredient_name) REFERENCES Ingredient(ingredient_name) ON DELETE CASCADE ON UPDATE CASCADE;

