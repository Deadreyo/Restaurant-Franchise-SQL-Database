-- branch

SELECT
    *
FROM
    Branch
WHERE
    1 ;

-- chef

SELECT SUM(orders_count) AS total_order_counts FROM Chef;

-- customer

SELECT `first_name`, `last_name`, `city` FROM `Customer` WHERE city = "heliopolis";
SELECT `customer_phone`, `first_name`, `last_name` FROM `Customer` WHERE customer_phone LIKE "+20 10%";

-- Delivery

SELECT
    address,
    delivery_fee
FROM
    Delivery;

-- delivery_guy

SELECT `first_name`, `last_name`, `bike_type`, `driving_license`, `delivery_count` FROM Delivery_guy AS d JOIN Employee AS e ON d.employee_ssn = e.employee_ssn WHERE d.delivery_count > 20;

-- Discounts

SELECT
    menu_item_id,
    COUNT(*) AS num_offers_applied
FROM
    Discounts
GROUP BY
    menu_item_id;

-- ingredient

-- SELECT
--     s.supplier_name,
--     s.location,
--     i.ingredient_name
-- FROM
--     Ingredient AS i
-- JOIN Sells AS a
-- ON
--     i.ingredient_name = a.ingredient_name
-- JOIN Supplier AS s
-- ON
--     s.supplier_name = a.supplier_name;

SELECT
    s.supplier_name,
    s.location,
    i.ingredient_name
FROM
    Ingredient AS i, Sells AS a, Supplier AS s
WHERE
    i.ingredient_name = a.ingredient_name AND
    s.supplier_name = a.supplier_name;

-- manager

SELECT first_name,last_name, sector, m.branch_name FROM Manager AS m JOIN Employee AS e ON m.employee_ssn=e.employee_ssn WHERE m.branch_name="Westside Branch";

-- Menu_Item

SELECT 
	name,
    price
FROM
    `Menu_item`
ORDER BY
    price DESC;

-- Offer

SELECT
    offer_id,
    TIMEDIFF(end_time, start_time) AS duration
FROM
    Offer;

-- Orders

SELECT
    date_and_time,
    general_notes
FROM
    `Orders`;

-- reservation

SELECT
    MAX(number_of_guests)
FROM
    Reservation;

-- R_tables

SELECT
    branch_name,
    COUNT(*)
FROM
    R_tables
GROUP BY
    branch_name;

-- Tool

SELECT *
FROM Tool
ORDER BY price DESC
;

-- Transaction

SELECT employee_ssn, COUNT(*) as num_of_bad_transactions
FROM Transaction
WHERE feedback < 3
GROUP BY employee_ssn;

-- branch_telephone

SELECT
    branch_name,
    COUNT(*)
FROM
    Branch_telephone
GROUP BY
    branch_name;

-- Cooks

SELECT first_name, last_name, order_id
FROM Cooks, Employee
WHERE Cooks.employee_ssn = Employee.employee_ssn
;

-- Makes

SELECT *
FROM Makes, Offer
WHERE Makes.offer_id = Offer.offer_id AND start_time < NOW() AND end_time > NOW() 
;

-- Stores

SELECT branch_name, ingredient_name From Stores WHERE available_quantity < 20;

