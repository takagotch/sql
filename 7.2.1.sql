--DDL: table
CREATE TABLE Products
(product VARCHER(32),
 PRIMARY KEY(skill));

CREATE TABLE ShopProducts
(Shop  VARCHAR(32),
 product VARCHAR(32),
 PRIMARY KEY(shop, products));

--DML: data
BEGIN TRANACTION;

INSERT INTO Products VALUES('ticket1');
INSERT INTO Products VALUES('ticket2');
INSERT INTO Products VALUES('ticket3');

INSERT INTO ShopProducts VALUES('osaka', 'ticket1');
INSERT INTO ShopProducts VALUES('osaka', 'ticket1');
INSERT INTO ShopProducts VALUES('osaka', 'ticket1');
INSERT INTO ShopProducts VALUES('kyoto', 'ticket2');
INSERT INTO ShopProducts VALUES('kyoto', 'ticket2');
INSERT INTO ShopProducts VALUES('tokyo', 'ticket3');
INSERT INTO ShopProducts VALUES('tokyo', 'ticket3');
INSERT INTO ShopProducts VALUES('tokyo', 'ticket3');
INSERT INTO ShopProducts VALUES('tokyo', 'ticket3');
INSERT INTO ShopProducts VALUES('nagoya', 'ticket4');
INSERT INTO ShopProducts VALUES('nagoya', 'ticket4');
INSERT INTO ShopProducts VALUES('nagoya', 'ticket4');
INSERT INTO ShopProducts VALUES('fukuoka', 'ticket5');
INSERT INTO ShopProducts VALUES('fukuoka', 'ticket5');
INSERT INTO ShopProducts VALUES('fukuoka', 'ticket5');

COMMIT;


SELECT DISTINCT shop
  FROM ShopProducts JP1
 WHERE NOT EXISTS
       (SELECT product
          FROM Products
        EXCEPT      
        SELECT product
          FROM ShopProducts JP2
         WHERE JP1.shop = JP2.shop);
/*
shop
----
osaka
kyoto
*/


