# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
```
sqlite3 dummy.db
sqlite>
```
```
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
```
```
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite> 
```
## Release 1: Insert Data 
```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:54  2014-05-13 20:53:54

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Lienha', 'Carleton', 'lhariver@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:54  2014-05-13 20:53:54
2           Lienha      Carleton    lhariver@gmail.com     2014-05-13 20:57:55  2014-05-13 20:57:55
sqlite> 
```

## Release 2: Multi-line commands
```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:54  2014-05-13 20:53:54
2           Lienha      Carleton    lhariver@gmail.com     2014-05-13 20:57:55  2014-05-13 20:57:55
sqlite> 
```
## Release 3: Add a column
```
ALTER TABLE users
ADD nicknames VARCHAR(64);

sqlite> UPDATE users
   ...> SET nicknames='Kimchee'
   ...> WHERE id=1;
sqlite> 
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:54  2014-05-13 20:53:54  Kimchee   
2           Lienha      Carleton    lhariver@gmail.com     2014-05-13 20:57:55  2014-05-13 20:57:55            
sqlite> 

sqlite> UPDATE users
   ...> SET nicknames='Nhim'
   ...> WHERE id=2;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:54  2014-05-13 20:53:54  Kimchee   
2           Lienha      Carleton    lhariver@gmail.com     2014-05-13 20:57:55  2014-05-13 20:57:55  Nhim      
sqlite> 
```
## Release 4: Change a value
```
sqlite> UPDATE users
   ...> SET first_name='Kimmy'
   ...> WHERE id=1;
sqlite> UPDATE users
   ...> SET nicknames='Ninja Coder'
   ...> WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames  
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-13 20:53:54  2014-05-13 20:53:54  Ninja Coder
2           Lienha      Carleton    lhariver@gmail.com     2014-05-13 20:57:55  2014-05-13 20:57:55  Nhim       
sqlite> 
```

## Release 5: Reflect
<!-- Add your reflection here -->