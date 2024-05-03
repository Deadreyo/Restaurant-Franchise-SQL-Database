-- chef

SELECT SUM(orders_count) AS total_order_counts FROM chef;

-- customer

SELECT `first_name`, `last_name`, `city` FROM `customer` WHERE city = "heliopolis";
SELECT `phone`, `first_name`, `last_name` FROM `customer` WHERE phone LIKE "+20 10%";

-- Delivery

SELECT
    address,
    delivery_fee
FROM
    Delivery;

-- delivery_guy

SELECT `first_name`, `last_name`, `bike_type`, `driving_license`, `delivery_count` FROM delivery_guy AS d JOIN employee AS e ON d.employee_ssn = e.employee_ssn WHERE d.delivery_count > 20;

-- Discounts

SELECT
    menu_item_id,
    COUNT(*) AS num_offers_applied
FROM
    Discounts
GROUP BY
    menu_item_id;

-- manager

SELECT first_name,last_name, sector, m.branch_name FROM manager AS m JOIN employee AS e ON m.employee_ssn=e.employee_ssn WHERE m.branch_name="abdo basha";

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

-- Tool

SELECT *
FROM Tool
ORDER BY price DESC
;

-- Transaction

SELECT employee_ssn, COUNT(*) as num_of_bad_transactions
FROM Transactions
WHERE feedback < 3
GROUP BY employee_ssn;

-- Stores

SELECT branch_name, ingredient_name From stores WHERE available_quantity < 20;

