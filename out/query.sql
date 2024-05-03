-- Delivery

SELECT
    address,
    delivery_fee
FROM
    Delivery;

-- Discounts

SELECT
    menu_item_id,
    COUNT(*) AS num_offers_applied
FROM
    Discounts
GROUP BY
    menu_item_id;

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

-- Stores

SELECT branch_name, ingredient_name From stores WHERE available_quantity < 20;

