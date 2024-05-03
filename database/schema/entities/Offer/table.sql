CREATE TABLE Offer(
    offer_id INT,
    type ENUM(
        'Coupon',
        'Discount',
        'Seasonal Deal',
        'Combo'
    ) NOT NULL,
    discount_percentage FLOAT NOT NULL,
    description VARCHAR(250) NOT NULL,
    coupon_code VARCHAR(15) UNIQUE,
    conditions TEXT,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP CHECK
        (start_time < end_time),
        PRIMARY KEY(offer_id)
);