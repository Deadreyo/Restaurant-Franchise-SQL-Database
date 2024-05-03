-- Delivery

CREATE VIEW feedback_to_fee AS SELECT
    delivery_fee,
    feedback
FROM
    delivery;

-- Menu_Item

CREATE VIEW menu_item_prices_view AS SELECT 
    name,
    size,
    price
FROM
    Menu_item;

-- Offer

CREATE VIEW Offer_duration AS SELECT
    offer_id,
    type,
    TIMEDIFF(end_time, start_time) AS duration
FROM
    Offer;

-- Orders

CREATE VIEW Order_cost AS SELECT
    date_and_time,
    total_amount
FROM
    Orders;

-- Stores

CREATE VIEW BranchesWithIngredients AS
(
    SELECT branch_name, ingredient_name, available_quantity AS quantity, 'Extra Ingredients' AS category
    FROM Stores
    WHERE available_quantity > 70
)
UNION
(
    SELECT branch_name, ingredient_name, available_quantity AS quantity, 'Less Ingredients' AS category
    FROM Stores
    WHERE available_quantity < 20
);


