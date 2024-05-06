UPDATE Reservation
SET date_and_time = DATE_ADD(date_and_time, INTERVAL 1 HOUR)
WHERE order_id = 5;