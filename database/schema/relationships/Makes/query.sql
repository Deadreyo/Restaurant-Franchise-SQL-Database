SELECT *
FROM Makes, Offer
WHERE Makes.offer_id = Offer.offer_id AND start_time < NOW() AND end_time > NOW() 
;