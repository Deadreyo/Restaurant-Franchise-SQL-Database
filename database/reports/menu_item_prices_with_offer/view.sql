CREATE VIEW menu_item_prices_with_offer AS
SELECT 
    mi.menu_item_id,
    mi.name,
    mi.price - (mi.price * (d.discount_percentage / 100)) AS price_after_discount
FROM 
    menu_item mi
JOIN 
    discounts d ON mi.discount_id = d.discount_id
JOIN 
    offer o ON d.offer_id = o.offer_id;
