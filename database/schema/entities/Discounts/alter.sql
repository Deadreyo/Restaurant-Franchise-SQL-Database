ALTER TABLE
    Discounts ADD CONSTRAINT FOREIGN KEY(menu_item_id) REFERENCES Menu_item(menu_item_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT FOREIGN KEY(offer_id) REFERENCES Offer(offer_id) ON UPDATE CASCADE ON DELETE CASCADE;