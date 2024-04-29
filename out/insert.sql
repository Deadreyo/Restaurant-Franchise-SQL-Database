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
  (1,"online payment","2024-08-22 16:06:17",1),
  (2,"credit card","2025-03-29 11:27:09",4),
  (3,"online payment","2023-11-23 12:10:20",3),
  (4,"credit card","2024-12-15 11:09:29",3),
  (5,"online payment","2023-08-09 00:38:35",2);

