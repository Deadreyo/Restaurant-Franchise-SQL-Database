CREATE VIEW menu_item_prices_with_offer AS
SELECT
    mi.menu_item_id,
    mi.name,
    mi.price AS original_price,
    mi.price - (mi.price * (o.discount_percentage / 100)) AS price_after_discount
FROM
    Menu_item mi
JOIN Discounts d ON
    mi.menu_item_id = d.menu_item_id
JOIN Offer o ON
    d.offer_id = o.offer_id;
