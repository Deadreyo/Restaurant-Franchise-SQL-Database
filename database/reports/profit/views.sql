CREATE VIEW profit AS SELECT
    SUM(O.total_amount) AS total_profit
FROM
    Orders AS O
WHERE
    DATE(O.date_and_time) >= '2023-01-01' AND DATE(O.date_and_time) < '2025-01-01';