CREATE VIEW menu_item_prices_with_offer AS
SELECT
    mi.menu_item_id,
    mi.name,
    mi.price AS original_price,
    mi.price - (mi.price * (o.discount_percentage / 100)) AS price_after_discount
FROM
    menu_item mi
JOIN discounts d ON
    mi.menu_item_id = d.menu_item_id
JOIN offer o ON
    d.offer_id = o.offer_id;
