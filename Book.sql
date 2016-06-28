DROP TABLE books;
CREATE TABLE BOOKs
  (
    SKU         VARCHAR2(50) PRIMARY KEY,
    Title       VARCHAR2(100) NOT NULL,
    Author      VARCHAR2(50) NOT NULL,
    Description VARCHAR2(200) NOT NULL,
    Price       NUMBER NOT NULL,
    Book INTEGER
  );
INSERT
INTO books VALUES
  (
    'Java1001',
    'Head First Java',
    'Kathy Sierra and Bert Bates',
    'Easy to read Java workbook',
    47.50,
    10
  );
INSERT
INTO books VALUES
  (
    'Java1002',
    'Thinking in Java',
    'Bruce Eckel',
    'Details about Java under the hood',
    20.0,
    5
  );
INSERT
INTO books VALUES
  (
    'Orcl1003',
    'OCP: Oracle Certified Professional Java SE',
    'Jeanne Boyarsky',
    'Everything you need to know in one place',
    45.00,
    10
  );
INSERT
INTO books VALUES
  (
    'Python1004',
    'Automate the Boring Stuff with Python',
    'Al Sweigart',
    'Fun with Python',
    10.50,
    6
  );
INSERT
INTO books VALUES
  (
    'Zombie1005',
    'The Makers Guide to the Zombie Apocalypse',
    'Simon Monk',
    'Defend Your Base with Simple Circuits, Arduino, and Raspberry Pi',
    16.50,
    9
  );
INSERT
INTO books VALUES
  (
    'Rasp1006',
    'Raspberry Pi Projects for the Evil Genius',
    'Donald Norris',
    'A dozen fiendishly fun projects for the Raspberry Pi!',
    14.75,
    8
  );
  
commit;