##Last login: Wed May 14 17:36:27 on ttys004
LH:4_SQL Lienha$ sqlite3 my_database.db
-- Loading resources from /Users/Lienha/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> .schema
CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  name VARCHAR(64),
  address  VARCHAR(64),
  phone_number INTEGER,
  account_number INTEGER,
  created_at DATETIME,
  updated_at DATETIME
);
CREATE TABLE internet_subscription (
  subscription_id INTEGER,
  internet_package VARCHAR(64),
  speed INTEGER,
  price INTEGER,
  created_at DATETIME,
  updated_at DATETIME
);
sqlite> SELECT * FROM customers;
customer_id  name        address                              phone_number  account_number  created_at           updated_at         
-----------  ----------  -----------------------------------  ------------  --------------  -------------------  -------------------
1            Pete        6732 A Street, Harrisburg, PA 17108  7173345634    101             2014-05-14 21:26:52  2014-05-14 21:26:52
2            Nancy       1355 B Street, Harrisburg, PA 17108  7171230001    102             2014-05-14 21:46:14  2014-05-14 21:46:14
3            Susan       1234 C Street, Harrisburg, PA 17108  7171230003    103             2014-05-14 21:46:14  2014-05-14 21:46:14
4            Jane        1234 D Street, Harrisburg, PA 17108  7171230004    104             2014-05-14 21:46:14  2014-05-14 21:46:14
5            Julie       1234 E Street, Harrisburg, PA 17108  7171230005    105             2014-05-14 21:46:14  2014-05-14 21:46:14
6            Kelly       1235 F Street, Harrisburg, PA 17108  7171230006    106             2014-05-14 21:46:14  2014-05-14 21:46:14
7            Mary        6732 G Street, Harrisburg, PA 17108  7173331234    107             2014-05-14 21:46:14  2014-05-14 21:46:14
8            Alan        1234 F Street, Harrisburg, PA 17108  7171230013    108             2014-05-14 22:27:17  2014-05-14 22:27:17
9            David       1234 X Street, Harrisburg, PA 17108  7171230024    109             2014-05-14 22:27:17  2014-05-14 22:27:17
10           Dennis      1234 Z Street, Harrisburg, PA 17108  7171230035    110             2014-05-14 22:27:17  2014-05-14 22:27:17
sqlite> SELECT * FROM internet_subscription;
subscription_id  internet_package  speed       price       created_at           updated_at         
---------------  ----------------  ----------  ----------  -------------------  -------------------
107              elite             6           35          2014-05-14 22:05:08  2014-05-14 22:05:08
106              max plus          18          45          2014-05-14 22:05:08  2014-05-14 22:05:08
101              max plus          18          45          2014-05-14 22:05:08  2014-05-14 22:05:08
105              pro               3           30          2014-05-14 22:08:06  2014-05-14 22:08:06
104              power             45          65          2014-05-14 22:09:19  2014-05-14 22:09:19
103              max plus          18          45          2014-05-14 22:09:19  2014-05-14 22:09:19
102              elite             6           35          2014-05-14 22:09:19  2014-05-14 22:09:19
108              pro               3           30          2014-05-14 22:28:45  2014-05-14 22:28:45
109              power             45          65          2014-05-14 22:28:45  2014-05-14 22:28:45
110              max plus          18          45          2014-05-14 22:28:45  2014-05-14 22:28:45
sqlite> SELECT name, account_number, internet_package, price FROM customers JOIN internet_subscription
   ...> ON (account_number=subscription_id)
   ...> WHERE speed = 18;
name        account_number  internet_package  price     
----------  --------------  ----------------  ----------
Kelly       106             max plus          45        
Pete        101             max plus          45        
Susan       103             max plus          45        
Dennis      110             max plus          45        
sqlite> 
