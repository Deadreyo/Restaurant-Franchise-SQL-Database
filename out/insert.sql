-- cashier

INSERT INTO cashier (`employee_ssn`,`transaction_count`)
VALUES
  ("149859020",300),
  ("954221751",1000),
  ("183326415",3000),
  ("112785327",2500);


-- chef

INSERT INTO chef(`employee_ssn`,`orders_count`)
VALUES
  ("268823444",300),
  ("909557231",200),
  ("833681284",150),
  ("679658701",250),
  ("743032113",90);




-- customer

INSERT INTO customer (`first_name`,`last_name`,`city`,`street`,`building_number`,`apartment_number`,`phone`)
VALUES
  ("hussein","abdallah","madinaty","sheikh ali mahmoud",118,51,"+20 104 386 4767"),
  ("hajar","hussein","fifth settlement","shams el din",62,3,"+20 108 388 1772"),
  ("ibrahim","walid","rehab","hegaz",312,29,"+20 116 031 9851"),
  ("merna","nour","heliopolis","beirut",70,49,"+20 154 585 8242"),
  ("mohsen","abdallah","first settlement","bahr",23,50,"+20 153 065 4187"),
  ("hajar","gamal","sheraton","shams el din",97,93,"+20 128 981 4242"),
  ("omar","mohsen","heliopolis","abdelhameed badawi",168,33,"+20 112 661 4447"),
  ("walid","nour","rehab","hegaz",93,46,"+20 108 765 2130"),
  ("merna","gamal","nasr city","abdelhameed badawi",189,107,"+20 113 865 2812"),
  ("nour","mohsen","nasr city","hegaz",96,117,"+20 102 886 3371");
INSERT INTO customer (`first_name`,`last_name`,`city`,`street`,`building_number`,`apartment_number`,`phone`)
VALUES
  ("omar","nour","rehab","ammar ibn yasser",223,70,"+20 128 553 6815"),
  ("gamal","ibrahim","nasr city","shams el din",251,67,"+20 122 268 1884"),
  ("maged","nour","heliopolis","abdelhameed badawi",57,90,"+20 108 694 7135"),
  ("mohsen","ibrahim","sheraton","shams el din",75,85,"+20 151 762 5958"),
  ("mohamed","mohamed","sheraton","beirut",305,27,"+20 106 443 8343"),
  ("sarah","ahmed","sheraton","bahr",261,24,"+20 117 406 2524"),
  ("abdallah","ali","nasr city","abdelhameed badawi",83,64,"+20 105 486 7462"),
  ("nader","gamal","rehab","ammar ibn yasser",74,138,"+20 115 037 3327"),
  ("walid","abdallah","rehab","shams el din",125,13,"+20 128 435 5782"),
  ("ibrahim","mohsen","madinaty","shams el din",97,15,"+20 125 036 1267");


-- Delivery

INSERT INTO `Delivery`(
    `order_id`,
    `statuss`,
    `delivery_fee`,
    `feedback`,
    `address`,
    `date_and_time`
)
VALUES(
    1,
    "Vivamus nisi. Mauris nulla. Integer",
    58,
    5,
    "Ap #451-4041 Vulputate Rd.",
    "2024-11-05 07:50:55"
),(
    2,
    "amet diam eu dolor egestas",
    79,
    4,
    "200-7668 Quis Avenue",
    "2024-07-18 07:38:15"
),(
    3,
    "ac turpis egestas. Fusce aliquet",
    26,
    2,
    "290-7995 Porta Rd.",
    "2024-04-06 03:35:44"
),(
    4,
    "Duis at lacus. Quisque purus",
    77,
    5,
    "656-1981 Vel Rd.",
    "2023-08-12 00:46:23"
),(
    5,
    "purus ac tellus. Suspendisse sed",
    48,
    2,
    "Ap #670-2689 Cursus Ave",
    "2025-04-30 21:42:17"
),(
    6,
    "volutpat nunc sit amet metus.",
    9,
    5,
    "Ap #619-6347 Est Avenue",
    "2023-07-28 02:04:23"
),(
    7,
    "Pellentesque tincidunt tempus risus. Donec",
    68,
    1,
    "622-238 Posuere Ave",
    "2023-12-10 09:11:45"
),(
    8,
    "diam dictum sapien. Aenean massa.",
    44,
    3,
    "Ap #829-4073 Non, Rd.",
    "2023-10-25 08:27:01"
),(
    9,
    "nisi dictum augue malesuada malesuada.",
    99,
    1,
    "P.O. Box 911, 3393 Neque Ave",
    "2025-04-10 20:45:58"
),(
    10,
    "neque tellus, imperdiet non, vestibulum",
    8,
    2,
    "548 Tristique Rd.",
    "2024-12-12 01:55:20"
),(
    11,
    "scelerisque scelerisque dui. Suspendisse ac",
    15,
    4,
    "8042 Orci. Road",
    "2024-01-16 22:47:21"
),(
    12,
    "faucibus ut, nulla. Cras eu",
    52,
    2,
    "Ap #557-2103 Sed Rd.",
    "2024-05-31 01:59:03"
),(
    13,
    "vitae, orci. Phasellus dapibus quam",
    25,
    2,
    "253-8540 Risus. St.",
    "2024-11-15 18:04:36"
),(
    14,
    "hendrerit neque. In ornare sagittis",
    18,
    3,
    "7327 Est. Av.",
    "2023-09-08 09:13:39"
),(
    15,
    "vitae odio sagittis semper. Nam",
    39,
    4,
    "Ap #699-1029 Tempor Rd.",
    "2024-04-02 15:00:04"
),(
    16,
    "Nam porttitor scelerisque neque. Nullam",
    88,
    3,
    "434-5657 Magna St.",
    "2024-11-25 02:18:01"
),(
    17,
    "justo eu arcu. Morbi sit",
    65,
    4,
    "9488 Diam. Rd.",
    "2023-06-03 08:15:15"
),(
    18,
    "at lacus. Quisque purus sapien,",
    26,
    1,
    "Ap #641-5229 Sed Avenue",
    "2024-05-20 13:51:45"
),(
    19,
    "lectus sit amet luctus vulputate,",
    75,
    2,
    "P.O. Box 245, 5134 Tempus St.",
    "2024-09-10 09:54:40"
),(
    20,
    "Quisque purus sapien, gravida non,",
    82,
    4,
    "761-555 Eu St.",
    "2023-05-15 03:25:53"
);

-- delivery_guy

INSERT INTO delivery_guy (`employee_ssn`,`bike_type`,`driving_license`,`delivery_count`)
VALUES
  ("058026787","bajaj boxer","28371928582194",50),
  ("596880713","vespa","30138643859743",10),
  ("105124665","suzuki","26396392859794",30),
  ("221456736","honda","2519406932859381",90),
  ("229080260","benelli","27486938567938",10);


-- Discounts

INSERT INTO `Discounts`(`menu_item_id`, `offer_id`)
VALUES(1, 2),(1, 3),(1, 4),(2, 5),(2, 6),(2, 7),(3, 8),(3, 9),(3, 10),(4, 11),(4, 12),(4, 14),(6, 10),(6, 11),(6, 12),(7, 18),(8, 20),(9, 20),(5, 9),(10, 6);

-- employee

INSERT INTO employee (`first_name`,`last_name`,`employee_ssn`,`date_of_birth`,`age`,`salary`,`hiring_date`,`experience_years`,`role`,`branch_name`)
VALUES
  ("ahmed","gamal","268823444","1971-02-03",53,"7000","2022-05-20",18,"chef","sahel"),
  ("atwa","omar","909557231","1994-02-23",30,"7000","2021-02-24",29,"chef","first settlement"),
  ("gamal","ahmed","058026787","1994-03-09",30,"7000","2021-05-28",21,"delivery_guy","abbasseya"),
  ("ibrahim","mohamed","833681284","1989-08-08",35,"7000","2021-03-26",27,"chef","fifth settlement"),
  ("atwa","mohsen","679658701","1989-06-02",35,"7000","2021-07-05",12,"chef","fifth settlement"),
  ("walid","abdallah","149859020","1970-01-02",54,"6000","2021-03-21",13,"cashier","city stars"),
  ("mohamed","gamal","596880713","1985-04-27",39,"5000","2021-05-01",8,"delivery_guy","abdo basha"),
  ("gamal","nour","771535616","1975-09-13",49,"10000","2024-08-21",10,"manager","abdo basha"),
  ("ibrahim","mohsen","954221751","1996-03-08",28,"5000","2022-02-16",2,"cashier","abbasseya"),
  ("ali","mohsen","586711748","1992-04-03",32,"20000","2022-11-18",26,"manager","nasr city");
INSERT INTO employee (`first_name`,`last_name`,`employee_ssn`,`date_of_birth`,`age`,`salary`,`hiring_date`,`experience_years`,`role`,`branch_name`)
VALUES
  ("abdallah","mohamed","105124665","1988-05-29",36,"7000","2021-03-18",19,"delivery_guy","city stars"),
  ("sarah","ali","761664112","1967-02-26",57,"20000","2021-06-18",3,"manager","abdo basha"),
  ("nour","mohsen","221456736","2000-03-12",24,"5000","2024-09-26",28,"delivery_guy","abbasseya"),
  ("hajar","walid","183326415","1963-05-04",61,"6000","2022-06-15",16,"cashier","first settlement"),
  ("merna","abdallah","683963463","1998-08-04",26,"12000","2025-05-20",19,"manager","city stars"),
  ("abdallah","gamal","338705751","1975-03-15",49,"20000","2024-01-09",5,"manager","abbasseya"),
  ("hussein","omar","229080260","1997-03-18",27,"5000","2023-05-09",13,"delivery_guy","heliopolis"),
  ("walid","mohamed","112785327","1976-02-09",48,"7000","2023-07-31",8,"cashier","abbasseya"),
  ("mohamed","ahmed","267181346","1969-04-30",28,"15000","2022-03-01",16,"manager","abdo basha"),
  ("hajar","nour","743032113","2002-04-05",22,"7000","2021-08-13",30,"chef","heliopolis");


-- manager

INSERT INTO manager(`employee_ssn`,`sector`,`branch_name`)
VALUES
  ("771535616","marketing","abdo basha"),
  ("586711748","HR","nasr city"),
  ("761664112","quality control","abdo basha"),
  ("683963463","financial management","city stars"),
  ("338705751","customer service","abbasseya"),
  ("267181346","operation management","abdo basha")
  ;

-- Menu_Item

INSERT INTO Menu_item (menu_item_id, name, category, size, price) VALUES
    ('1', 'Cheese Cake', 'appetizer', 'medium', '28.5'),
    ('2', 'Green Salad', 'salads', 'large', '42.75'),
    ('3', 'Chicken Salad', 'salads', 'large', '86.25'),
    ('4', 'Italian Chicken', 'main dish', 'large', '48'),
    ('5', 'Chocolate Tarte', 'desserts', 'large', '97.25'),
    ('6', 'Tea', 'hot drinks', 'small', '27.75'),
    ('7', 'Onion Rings', 'appetizer', 'small', '28.25'),
    ('8', 'Fruits', 'salads', 'medium', '33.75'),
    ('9', 'Sweet beans', 'main dish', 'large', '53.5'),
    ('10', 'Chocolate rolls', 'desserts', 'large', '13.25'),
    ('11', 'Mozzarela sticks', 'appetizer', 'large', '99.5'),
    ('12', 'Coffee', 'hot drinks', 'medium', '18.5'),
    ('13', 'Nescafe', 'hot drinks', 'medium', '83.5'),
    ('14', 'Green burger', 'main dish', 'medium', '8.5'),
    ('15', 'Vanilla Milkshake', 'cold drinks', 'medium', '32.75'),
    ('16', 'Cheesy bites', 'appetizer', 'small', '54.5'),
    ('17', 'Roasted beef', 'main dish', 'large', '13'),
    ('18', 'Fries', 'appetizer', 'medium', '45.75'),
    ('19', 'Chips', 'main dish', 'large', '28'),
    ('20', 'Cheese', 'desserts', 'large', '74.75'),
    ('21', 'Rice', 'main dish', 'medium', '84.5'),
    ('22', 'Cheese fries', 'appetizer', 'large', '66.25'),
    ('23', 'Sausages', 'main dish', 'small', '21.75'),
    ('24', 'Sausages', 'main dish', 'medium', '72.75'),
    ('25', 'Bacon', 'appetizer', 'small', '66'),
    ('26', 'Shoes', 'desserts', 'medium', '29.75'),
    ('27', 'Chips', 'appetizer', 'small', '64.25'),
    ('28', 'Peppers', 'appetizer', 'small', '62.25'),
    ('29', 'Salad', 'main dish', 'medium', '60.75'),
    ('30', 'Juice', 'cold drinks', 'small', '22.25');

INSERT INTO Menu_item (name, category, size, price)
VALUES(
    'Pepperoni Pizza',
    'main dish',
    'small',
    20
);

INSERT INTO Menu_item (name, category, size, price)
VALUES(
    'Pepperoni Pizza',
    'main dish',
    'medium',
    30
);

-- Offer

INSERT INTO `Offer`(
    `offer_id`,
    `type`,
    `discount_percentage`,
    `coupon_code`,
    `conditions`,
    `start_time`,
    `end_time`,
    `description`
)
VALUES(
    1,
    "Seasonal Deal",
    88,
    "enim",
    "nulla. In tincidunt congue turpis. In condimentum.",
    "2025-05-01 23:22:18",
    "2027-03-28 00:55:47",
    "velit. Cras lorem lorem, luctus ut, pellentesque"
),(
    2,
    "Discount",
    87,
    "in",
    "mi tempor lorem, eget mollis lectus pede et risus.",
    "2023-05-09 14:53:49",
    "2028-10-17 02:51:32",
    "semper et, lacinia vitae, sodales at,"
),(
    3,
    "Coupon",
    29,
    "et",
    "id, blandit at, nisi. Cum sociis natoque penatibus et",
    "2025-01-16 02:10:21",
    "2029-12-29 07:20:26",
    "ridiculus mus. Aenean eget magna. Suspendisse"
),(
    4,
    "Combo",
    53,
    "Donec",
    "dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.",
    "2024-09-24 09:50:43",
    "2029-05-27 18:36:17",
    "a sollicitudin orci sem"
),(
    5,
    "Discount",
    61,
    "ipsum",
    "magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse",
    "2025-02-05 07:37:41",
    "2026-03-13 22:15:40",
    "Cras lorem lorem, luctus ut, pellentesque eget, dictum"
),(
    6,
    "Seasonal Deal",
    81,
    "commodo",
    "eu dui. Cum sociis natoque penatibus et magnis dis parturient montes,",
    "2024-04-20 10:57:16",
    "2028-08-15 18:22:36",
    "ipsum dolor sit amet, consectetuer adipiscing elit."
),(
    7,
    "Discount",
    77,
    "eu",
    "nec, euismod in, dolor. Fusce feugiat. Lorem",
    "2025-03-07 11:38:19",
    "2029-03-27 22:40:50",
    "a ultricies adipiscing,"
),(
    8,
    "Discount",
    18,
    "Quisque",
    "semper pretium neque. Morbi quis urna. Nunc quis arcu",
    "2024-06-16 14:54:33",
    "2029-02-20 05:27:49",
    "malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna."
),(
    9,
    "Combo",
    44,
    "ullamcorper",
    "velit eget laoreet posuere, enim nisl elementum purus, accumsan",
    "2025-02-05 09:59:49",
    "2029-11-11 14:55:52",
    "neque. Morbi quis urna. Nunc quis arcu"
),(
    10,
    "Seasonal Deal",
    26,
    "vulputate",
    "amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec,",
    "2023-11-01 08:10:11",
    "2029-01-23 06:48:22",
    "pharetra sed, hendrerit a, arcu. Sed et libero. Proin"
),(
    11,
    "Discount",
    7,
    "Suspendisse",
    "placerat eget, venenatis a, magna.",
    "2023-08-12 15:56:25",
    "2029-06-27 03:33:13",
    "ornare sagittis felis. Donec tempor, est ac mattis semper,"
),(
    12,
    "Combo",
    82,
    "velit.",
    "odio. Phasellus at augue id ante",
    "2024-12-31 14:40:06",
    "2029-05-28 16:01:20",
    "diam dictum"
),(
    13,
    "Discount",
    26,
    "auctor",
    "dolor sit amet, consectetuer adipiscing",
    "2024-02-08 10:09:16",
    "2028-04-18 12:05:56",
    "neque et nunc. Quisque"
),(
    14,
    "Seasonal Deal",
    59,
    "scelerisque",
    "Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum",
    "2024-03-02 08:24:01",
    "2027-08-05 00:22:23",
    "Suspendisse tristique neque venenatis lacus."
),(
    15,
    "Coupon",
    92,
    "sem",
    "mi lacinia mattis. Integer eu lacus. Quisque imperdiet,",
    "2024-09-20 23:22:50",
    "2026-02-18 06:25:28",
    "metus sit amet"
),(
    16,
    "Coupon",
    74,
    "lectus.",
    "ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem.",
    "2024-01-09 21:34:03",
    "2027-07-03 03:32:00",
    "rutrum lorem ac risus. Morbi"
),(
    17,
    "Seasonal Deal",
    100,
    "urna.",
    "Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt",
    "2023-09-30 01:14:31",
    "2029-12-17 19:58:21",
    "neque"
),(
    18,
    "Seasonal Deal",
    49,
    "nibh.",
    "quis, pede. Suspendisse dui. Fusce diam nunc,",
    "2025-04-11 23:31:46",
    "2028-09-09 02:18:50",
    "torquent per conubia nostra, per inceptos hymenaeos. Mauris"
),(
    19,
    "Seasonal Deal",
    3,
    "diam",
    "Aenean eget magna.",
    "2024-03-25 08:16:53",
    "2029-08-31 20:35:07",
    "nostra, per inceptos"
),(
    20,
    "Coupon",
    23,
    "interdum",
    "Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget",
    "2023-08-10 18:20:27",
    "2024-05-17 14:39:12",
    "sapien. Aenean"
);

-- Orders

INSERT INTO `Orders`(
    `order_id`,
    `date_and_time`,
    `total_amount`,
    `general_notes`,
    `statuss`,
    `is_takeaway`
)
VALUES(
    1,
    "2024-04-27 22:33:08",
    374,
    "velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae",
    "Received",
    "1"
),(
    2,
    "2024-06-10 06:13:08",
    47,
    "sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis",
    "Received",
    "0"
),(
    3,
    "2025-03-11 17:51:50",
    863,
    "arcu eu odio tristique pharetra. Quisque ac libero nec ligula",
    "Pending",
    "1"
),(
    4,
    "2023-10-28 20:55:04",
    213,
    "amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,",
    "Received",
    "1"
),(
    5,
    "2024-02-14 19:41:11",
    461,
    "eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer",
    "On the way",
    "1"
),(
    6,
    "2023-11-03 16:08:24",
    401,
    "sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis",
    "Cancelled",
    "0"
),(
    7,
    "2025-01-29 18:46:27",
    715,
    "et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis",
    "On the way",
    "1"
),(
    8,
    "2024-03-02 23:28:59",
    929,
    "elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu",
    "Pending",
    "0"
),(
    9,
    "2023-06-25 18:26:29",
    825,
    "arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi.",
    "Completed",
    "0"
),(
    10,
    "2024-10-12 01:11:31",
    506,
    "ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque",
    "On the way",
    "1"
);
INSERT INTO `myTable`(
    `order_id`,
    `date_and_time`,
    `total_amount`,
    `general_notes`,
    `statuss`,
    `is_takeaway`
)
VALUES(
    11,
    "2023-05-06 13:48:18",
    401,
    "enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris",
    "Cancelled",
    "0"
),(
    12,
    "2025-01-20 16:10:30",
    564,
    "euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut,",
    "On the way",
    "0"
),(
    13,
    "2024-08-15 14:25:58",
    563,
    "mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed",
    "Received",
    "0"
),(
    14,
    "2024-05-12 01:44:19",
    811,
    "fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque",
    "Pending",
    "0"
),(
    15,
    "2025-01-31 22:45:51",
    260,
    "Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus,",
    "Cancelled",
    "1"
),(
    16,
    "2024-12-22 05:07:37",
    833,
    "ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,",
    "Completed",
    "1"
),(
    17,
    "2024-07-22 00:03:59",
    110,
    "risus. Donec nibh enim, gravida sit amet, dapibus id, blandit",
    "On the way",
    "0"
),(
    18,
    "2024-10-16 04:40:20",
    963,
    "aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis",
    "Cancelled",
    "0"
),(
    19,
    "2025-02-15 17:01:32",
    563,
    "sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque",
    "On the way",
    "1"
),(
    20,
    "2024-01-23 01:02:58",
    729,
    "at pretium aliquet, metus urna convallis erat, eget tincidunt dui",
    "On the way",
    "0"
);

-- Shipment


INSERT INTO shipment (shipment_id, status, number_of_items, total_price,supplier_name,branch_name)
VALUES (1,True, 20, 100, "Valeo", "number 1");

INSERT INTO shipment (shipment_id, status, number_of_items, total_price,supplier_name,branch_name)
VALUES (2,False, 30, 100, "IBM", "number 2");

INSERT INTO shipment (shipment_id, status, number_of_items, total_price,supplier_name,branch_name)
VALUES (3,True, 50, 50, "google", "number 3");

INSERT INTO shipment (shipment_id, status, number_of_items, total_price,supplier_name,branch_name)
VALUES (4,True, 10, 200, "seimens", "number 4");

-- Supplier

INSERT INTO supplier 
VALUES ("Valeo", "nasr city", TRUE);

INSERT INTO supplier 
VALUES ("Valeo", "Nasr City", TRUE);

INSERT INTO supplier 
VALUES ("XYZ Company", "123 Main Street", TRUE);

INSERT INTO supplier 
VALUES ("ABC Corporation", "456 Elm Street", FALSE);

INSERT INTO supplier 
VALUES ("Smith Enterprises", "789 Oak Avenue", TRUE);

INSERT INTO supplier 
VALUES ("Global Parts Inc.", "10 Pine Street", FALSE);

INSERT INTO supplier 
VALUES ("Tech Solutions Ltd.", "555 Broadway", TRUE);


-- Tool

INSERT INTO Tool VALUES 
    ('Stove', 1500),
    ('Oven', 2000),
    ('Microwave', 1000),
    ('Refrigerator', 2500),
    ('Dishwasher', 2000),
    ('Knife', 50),
    ('Frying pan', 100),
    ('Cutting board', 30),
    ('Blender', 150),
    ('Toaster', 50),
    ('Coffee maker', 100),
    ('Grill', 200),
    ('Waffle maker', 100),
    ('Rice cooker', 100),
    ('Pressure cooker', 150),
    ('Juicer', 100),
    ('Ice cream maker', 200),
    ('Bread maker', 150),
    ('Electric kettle', 50)
;

-- Transaction

INSERT INTO `Transaction` (`order_id`,`payment_method`,`date_and_time`,`feedback`)
VALUES
  (1,"credit card","2023-11-30 13:15:51",4),
  (2,"online payment","2024-09-01 00:45:57",3),
  (3,"debit card","2024-11-19 16:30:36",3),
  (4,"online payment","2024-05-09 06:07:16",4),
  (5,"credit card","2024-10-20 19:04:32",3);

-- Applies_on

INSERT INTO `Applies_on`(`order_id`, `offer_id`)
VALUES(1, 2),(1, 3),(1, 4),(2, 5),(2, 6),(2, 7),(3, 8),(3, 9),(3, 10),(4, 11),(4, 12),(4, 14),(6, 10),(6, 11),(6, 12),(7, 18),(8, 20),(9, 20),(5, 9),(10, 6);

-- Can_use

INSERT INTO ...
;

-- cashier_feedbacks_received

INSERT INTO cashier_feedbacks_received (`employee_ssn`,`feedback`)
VALUES
  ("149859020",1),
  ("954221751",5),
  ("183326415",3),
  ("112785327",2),
  ("149859020",3),
  ("954221751",4),
  ("183326415",3),
  ("112785327",5),
  ("149859020",4),
  ("954221751",3),
  ("183326415",4),
  ("112785327",2),
  ("149859020",3),
  ("954221751",4),
  ("183326415",3),
  ("112785327",5);


-- Cooks

INSERT INTO ...
;

-- cuisines

INSERT INTO cuisines(`employee_ssn`,`cuisine`)
VALUES
  ("268823444","syrian"),
  ("909557231","western"),
  ("833681284","indian"),
  ("679658701","oriental"),
  ("743032113","italian");




-- delivery_feedbacks_received

INSERT INTO delivery_feedbacks_received (`employee_ssn`,`feedback`)
VALUES
  ("058026787",1),
  ("596880713",5),
  ("105124665",3),
  ("221456736",4),
  ("229080260",2),
  ("058026787",3),
  ("596880713",4),
  ("105124665",2),
  ("221456736",5),
  ("229080260",1),
  ("058026787",2),
  ("596880713",3),
  ("105124665",5),
  ("221456736",3),
  ("229080260",3);

-- Has

INSERT INTO Has VALUES
    (1, 5, 2, 'No onions, please'),
    (1, 4, 3, NULL),
    (1, 3, 4, 'Extra cheese'),
    (1, 2, 5, NULL),
    (1, 1, 6, 'Spicy, if possible'),
    (2, 5, 1, NULL),
    (2, 4, 2, 'Gluten-free bread'),
    (2, 3, 3, NULL),
    (2, 2, 4, 'No salt in the fries'),
    (2, 1, 5, NULL),
    (3, 5, 6, 'Dressing on the side'),
    (3, 4, 1, NULL),
    (3, 3, 2, 'Extra olives'),
    (3, 2, 3, NULL),
    (3, 1, 4, 'Cooked medium rare'),
    (4, 5, 5, NULL),
    (4, 4, 6, 'No ice in the drink'),
    (4, 3, 1, NULL),
    (4, 2, 2, 'Add bacon'),
    (4, 1, 3, NULL),
    (5, 5, 4, 'Vegan cheese only'),
    (6, 2, 6, NULL),
    (6, 1, 1, NULL),
    (7, 5, 2, NULL),
    (7, 4, 3, NULL),
    (7, 3, 4, NULL),
    (7, 2, 5, NULL),
    (7, 1, 6, NULL),
    (8, 5, 1, NULL),
    (8, 4, 2, NULL),
    (8, 3, 3, NULL)
;

-- Made_with

INSERT INTO Made_with (tool_name, menu_item_id) VALUES 
    ('Stove', 4),
    ('Oven', 5),
    ('Microwave', 7),
    ('Refrigerator', 2),
    ('Dishwasher', 8),
    ('Knife', 4),
    ('Frying pan', 4),
    ('Cutting board', 4),
    ('Blender', 10),
    ('Toaster', 6),
    ('Coffee maker', 12),
    ('Grill', 11),
    ('Waffle maker', 9),
    ('Rice cooker', 21),
    ('Pressure cooker', 19),
    ('Juicer', 15),
    ('Ice cream maker', 20),
    ('Bread maker', 14),
    ('Electric kettle', 30),
    ('Knife', 29),
    ('Cutting board', 29),
    ('Frying pan', 23),
    ('Knife', 23),
    ('Cutting board', 23),
    ('Frying pan', 24),
    ('Knife', 24),
    ('Cutting board', 24),
    ('Microwave', 25),
    ('Knife', 25),
    ('Frying pan', 25),
    ('Cutting board', 25),
    ('Microwave', 28),
    ('Knife', 28),
    ('Frying pan', 28),
    ('Cutting board', 28);


-- Makes

INSERT INTO ...
;

-- Sells

INSERT INTO sells
VALUES ("tomato", "Valeo", 100, 200);

INSERT INTO sells
VALUES ("banana", "IBM", 1000, 20000);

INSERT INTO sells
VALUES ("milk", "google", 35, 50000);

INSERT INTO sells
VALUES ("meat", "seimens", 400, 100000);




-- Stores

INSERT INTO `Stores` (`branch_name`,`ingredient_name`,`available_quantity`)
VALUES
  ("Branch 1","Ingredient A",45),
  ("Branch 1","Ingredient B",83),
  ("Branch 1","Ingredient C",46),
  ("Branch 1","Ingredient D",28),
  ("Branch 1","Ingredient E",14),
  ("Branch 1","Ingredient F",74),
  ("Branch 1","Ingredient G",90),
  ("Branch 2","Ingredient A",83),
  ("Branch 2","Ingredient B",93),
  ("Branch 2","Ingredient C",53),
  ("Branch 2","Ingredient D",53),
  ("Branch 2","Ingredient E",55),
  ("Branch 2","Ingredient F",90),
  ("Branch 2","Ingredient G",77),
  ("Branch 3","Ingredient A",31),
  ("Branch 3","Ingredient J",7),
  ("Branch 3","Ingredient K",66),
  ("Branch 3","Ingredient L",83),
  ("Branch 3","Ingredient M",15),
  ("Branch 3","Ingredient N",74);


-- Supplied_in

INSERT INTO supplied_in 
VALUES (tomato, 1, 5, 20);

INSERT INTO supplied_in 
VALUES (banana, 1, 10, 200);

INSERT INTO supplied_in 
VALUES (milk, 1, 15, 100);

INSERT INTO supplied_in 
VALUES (meat, 1, 300, 100);

INSERT INTO supplied_in 
VALUES (tomato, 2, 5, 50);

INSERT INTO supplied_in 
VALUES (banana, 2, 10, 100);

INSERT INTO supplied_in 
VALUES (milk, 2, 15, 200);

INSERT INTO supplied_in 
VALUES (meat, 2, 300, 200);

