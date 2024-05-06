-- cashier

ALTER TABLE Cashier
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- chef

ALTER TABLE Chef
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Delivery

ALTER TABLE
    Delivery ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(employee_ssn) REFERENCES Delivery_guy(employee_ssn) ON UPDATE CASCADE ON DELETE CASCADE;


-- delivery_guy

ALTER TABLE Delivery_guy
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Discounts

ALTER TABLE
    Discounts ADD CONSTRAINT FOREIGN KEY(menu_item_id) REFERENCES Menu_item(menu_item_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(offer_id) REFERENCES Offer(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;

-- employee

ALTER TABLE Employee
	ADD CONSTRAINT FOREIGN KEY (branch_name) REFERENCES Branch(branch_name)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
;

-- manager

ALTER TABLE Manager
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;
ALTER TABLE Manager
	ADD CONSTRAINT FOREIGN KEY (branch_name) REFERENCES Branch(branch_name)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
;

-- Orders

ALTER TABLE
    Orders
    ADD CONSTRAINT  FOREIGN KEY(customer_phone) REFERENCES Customer(customer_phone) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;


-- reservation

ALTER TABLE
    Reservation ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE;

-- R_tables

ALTER TABLE
    R_tables ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;

-- Shipment

ALTER TABLE Shipment
	-- ADD COLUMN branch_name VARCHAR(20),
	ADD CONSTRAINT FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
;

ALTER TABLE Shipment
	ADD CONSTRAINT FOREIGN KEY (supplier_name) REFERENCES Supplier(supplier_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Transaction

 ALTER TABLE Transaction
	ADD CONSTRAINT FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    ADD FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE SET NULL
;


-- Applies_on

ALTER TABLE
    Applies_on ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(offer_id) REFERENCES Offer(offer_id) ON UPDATE CASCADE ON DELETE CASCADE
    ;

-- available_in

ALTER TABLE
    Available_in ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE
    Available_in ADD CONSTRAINT FOREIGN KEY(menu_item_id) REFERENCES Menu_item(menu_item_id) ON UPDATE CASCADE ON DELETE CASCADE;

-- branch_telephone

ALTER TABLE
    Branch_telephone ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;

-- Can_use

ALTER TABLE Can_use
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Chef(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    ADD FOREIGN KEY (tool_name) REFERENCES Tool(tool_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- cashier_feedbacks_received

ALTER TABLE Cashier_feedbacks_received
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Contains

ALTER TABLE Contains
	ADD CONSTRAINT FOREIGN KEY (ingredient_name) REFERENCES Ingredient(ingredient_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE Contains
	ADD CONSTRAINT FOREIGN KEY (menu_item_id) REFERENCES Menu_item(menu_item_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Cooks

ALTER TABLE Cooks
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Chef(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    ADD FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- cuisines

ALTER TABLE Cuisines
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;


-- delivery_feedbacks_received

ALTER TABLE Delivery_feedbacks_received
	ADD CONSTRAINT FOREIGN KEY (employee_ssn) REFERENCES Employee(employee_ssn)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Has

ALTER TABLE Has
	ADD CONSTRAINT FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    ADD FOREIGN KEY (menu_item_id) REFERENCES Menu_item(menu_item_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Made_with

ALTER TABLE Made_with
	ADD CONSTRAINT FOREIGN KEY (tool_name) REFERENCES Tool(tool_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    ADD FOREIGN KEY (menu_item_id) REFERENCES Menu_item(menu_item_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Makes

ALTER TABLE Makes
	ADD CONSTRAINT FOREIGN KEY (branch_name) REFERENCES Branch(branch_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    ADD FOREIGN KEY (offer_id) REFERENCES Offer(offer_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- owns

 ALTER TABLE
    Owns ADD CONSTRAINT FOREIGN KEY(tool_name) REFERENCES Tool(tool_name) ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE
    Owns ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;

-- reserved

ALTER TABLE
    Reserved ADD CONSTRAINT FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE
    Reserved ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Sells

ALTER TABLE Sells
	ADD CONSTRAINT FOREIGN KEY (ingredient_name) REFERENCES Ingredient(ingredient_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE Sells
	ADD CONSTRAINT FOREIGN KEY (supplier_name) REFERENCES Supplier(supplier_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

-- Stores

ALTER TABLE
    Stores ADD FOREIGN KEY(branch_name) REFERENCES Branch(branch_name) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY(ingredient_name) REFERENCES Ingredient(ingredient_name) ON DELETE CASCADE ON UPDATE CASCADE;

-- Supplied_in

ALTER TABLE Supplied_in
	ADD CONSTRAINT FOREIGN KEY (ingredient_name) REFERENCES Ingredient(ingredient_name)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE Supplied_in
	ADD CONSTRAINT FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;


