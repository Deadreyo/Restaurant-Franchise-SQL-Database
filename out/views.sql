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

-- Can_use

CREATE VIEW Chef_can_use_tools AS
SELECT first_name, last_name, GROUP_CONCAT(tool_name) as tools_used
FROM Can_use, Employee
WHERE Can_use.employee_ssn = Employee.employee_ssn
GROUP BY Employee.employee_ssn
;

-- Has

CREATE VIEW Orders_has_items AS
SELECT order_id, name, size, price, quantity, price * quantity as total_price
FROM Has, Menu_item
WHERE Has.menu_item_id = Menu_item.menu_item_id
;

CREATE VIEW Order_total_cost AS
SELECT order_id, SUM(price * quantity) as total_cost
FROM Has, Menu_item
WHERE Has.menu_item_id = Menu_item.menu_item_id
GROUP BY order_id
;

-- Made_with

CREATE VIEW Tools_used_in_items AS
SELECT Menu_item.name as menu_item, GROUP_CONCAT(tool_name) as tools_used
FROM Made_with, Menu_item
WHERE Made_with.menu_item_id = Menu_item.menu_item_id
GROUP BY Menu_item.menu_item_id
;

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


