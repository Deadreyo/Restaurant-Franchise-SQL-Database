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