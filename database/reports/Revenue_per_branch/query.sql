SELECT Branch.branch_name, SUM(amount_with_discount) AS total_per_branch
FROM Transaction
JOIN Orders ON Orders.order_id = Transaction.order_id
JOIN Branch ON Branch.branch_name = Orders.branch_name
WHERE Transaction.date_and_time BETWEEN '2024-03-01' AND '2024-03-30'    
GROUP BY Branch.branch_name
ORDER BY total_per_branch DESC;
