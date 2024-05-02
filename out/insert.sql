-- cashier

INSERT INTO ...

-- chef

INSERT INTO ...

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


-- delivery_guy

INSERT INTO ...

-- employee


INSERT INTO employee (`first_name`,`last_name`,`employee_ssn`,`date_of_birth`,`age`,`salary`,`hiring_date`,`experience_years`,`role`,`branch_name`)
VALUES
  ("gamal","ahmed","058026787","1994-03-09",30,"7000","2021-05-28",21,"delivery_guy","abbasseya"),
  ("ahmed","gamal","268823444","1971-02-03",53,"20000","2022-05-20",18,"manager","sahel"),
  ("ibrahim","mohamed","833681284","1989-08-08",35,"7000","2021-03-26",27,"chef","fifth settlement"),
  ("atwa","mohsen","679658701","1989-06-02",35,"7000","2021-07-05",12,"chef","fifth settlement"),
  ("walid","abdallah","149859020","1970-01-02",54,"6000","2021-03-21",13,"cashier","city stars"),
  ("mohamed","gamal","596880713","1985-04-27",39,"5000","2021-05-01",8,"delivery_guy","abdo basha"),
  ("atwa","omar","909557231","1994-02-23",30,"15000","2021-02-24",29,"manager","first settlement"),
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

INSERT INTO manager


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

