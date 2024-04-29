-- Menu_Item

INSERT INTO Menu_item
VALUES(
    1,
    'Pepperoni Pizza',
    'pizza',
    'Small',
    20
);

INSERT INTO Menu_item(name, category, size, price)
VALUES(
    'Pepperoni Pizza',
    'pizza',
    'Medium',
    30
);

-- Transaction

INSERT INTO `Transaction` (`order_id`,`payment_method`,`date_and_time`,`feedback`)
VALUES
  (1,"credit card","2023-11-30 13:15:51",4),
  (2,"online payment","2024-09-01 00:45:57",3),
  (3,"debit card","2024-11-19 16:30:36",3),
  (4,"online payment","2024-05-09 06:07:16",4),
  (5,"credit card","2024-10-20 19:04:32",3);

