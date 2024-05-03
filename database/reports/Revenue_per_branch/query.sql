-- Write the actual logic of the query here

SELECT branch_name, total_revenue
FROM (
    SELECT Branch.branch_name, SUM(Transactions.amount_with_discount) AS total_revenue
    FROM Transactions
    JOIN Orders ON Transactions.order_id = Orders.order_id
    WHERE Orders.date_and_time BETWEEN '2023-01-01' AND '2023-12-30'
    GROUP BY Branch.branch_name;
)
WHERE total_revenue = (
    SELECT MAX(total_revenue) FROM (
        SELECT Branch.branch_name, SUM(Transactions.amount_with_discount) AS total_revenue
        FROM Transactions
        JOIN Orders ON Transactions.order_id = Orders.order_id
        WHERE Orders.date_and_time BETWEEN '2023-01-01' AND '2023-12-30'
        GROUP BY Branch.branch_name;
    )
)
