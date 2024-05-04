SELECT Branch.branch_name, SUM(amount_with_discount) AS total_per_branch
FROM transaction
JOIN orders ON orders.order_id = transaction.order_id
JOIN Branch ON Branch.branch_name = orders.branch_name
GROUP BY Branch.branch_name
ORDER BY total_per_branch DESC;