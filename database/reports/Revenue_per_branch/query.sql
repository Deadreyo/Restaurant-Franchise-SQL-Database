SELECT Branch.branch_name, SUM(amount_with_discount) AS total_per_branch
FROM transaction
JOIN Orders ON Orders.order_id = Transaction.order_id
JOIN Branch ON Branch.branch_name = Orders.branch_name
GROUP BY Branch.branch_name
ORDER BY total_per_branch DESC;
