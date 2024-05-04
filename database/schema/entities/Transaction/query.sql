SELECT employee_ssn, COUNT(*) as num_of_bad_transactions
FROM Transaction
WHERE feedback < 3
GROUP BY employee_ssn;