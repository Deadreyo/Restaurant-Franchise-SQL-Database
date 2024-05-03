SELECT
    menu_item_id,
    COUNT(*) AS num_offers_applied
FROM
    Discounts
GROUP BY
    menu_item_id;