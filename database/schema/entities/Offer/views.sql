CREATE VIEW Offer_duration AS SELECT
    offer_id,
    type,
    TIMEDIFF(end_time, start_time) AS duration
FROM
    Offer;