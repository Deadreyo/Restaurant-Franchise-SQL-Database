SELECT
    offer_id,
    TIMEDIFF(end_time, start_time) AS duration
FROM
    Offer;