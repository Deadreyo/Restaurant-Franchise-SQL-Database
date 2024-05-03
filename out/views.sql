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

-- Transaction

CREATE VIEW Transaction_view AS
    SELECT
        Transaction.order_id,
        Transaction.payment_method,
        Transaction.date_and_time,
        Transaction.employee_ssn,
        Customer.first_name,
        Customer.last_name,
        Orders.customer_phone
    FROM Transaction, Orders, Customer
    WHERE Transaction.order_id = Orders.order_id AND Orders.customer_phone = Customer.customer_phone;

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


