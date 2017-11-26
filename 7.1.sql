--:EXCEPT
SELECT product_id, product_name
  FROM Product2
EXCEPT
SELECT product_id, product_name
  FROM Product
ORDER BY product_id;


SELECT product_id, product_name
  FROM Product
EXCEPT
SELECT product_id, product_name
  FROM Product2
ORDER BY product_id;

#INTERSECT
SELECT product_id, product_name
  FROM Product
INTERSECT
  FROM Product2
ORDER BY product_id;

#ALL
SELECT product_id, product_name
  FROM Product
UNION ALL
SELECT product_id, product_name
  FROM Product2;

#
SELECT product_id, product_name
  FROM Product
 WHERE product_category = 'ticket1'
UNION
SELECT product_id, product_name
  FROM Product2
 WHERE product_category = 'ticket2'
ORDER BY product_id;

#
SELECT product_id, sale_price
  FROM Product
UNION
SELECT product_id, date
  FROM Product2;

#
SELECT product_id, product_name
  FROM Product
UNION
SELECT product_id, product_name, sale_price
  FROM Product2;

#
SELECT product_id, product_name
  FROM Product
UNION
SELECT product_id, product_name
  FROM Product2;

#
BEGIN TARANSACTION;
INSERT INTO Product2 VALUES ('0001', 'ticket1', 'ticket2', 1000, 500, '2017-11-26');
INSERT INTO Product2 VALUES ('0002', 'ticket3', 'ticket4', 500, 320, '2017-11-24');
INSERT INTO Product2 VALUES ('0003', 'ticket5', 'ticket1', 4000, 2800, NULL);
INSERT INTO Product2 VALUES ('0009', 'ticket6', 'ticket1', 800, 500, NULL);
INSERT INTO Product2 VALUES ('0010', 'ticket7', 'ticket8', 2000, 1700, '2017-11-26');
COMMIT;


CREATE TABLE Product2
(product_id       CHAR(4)      NOT NULL;
 product_name     VARCHAR(100) NOT NULL;
 product_category VARCHAR(32)  NOT NULL;
 sale_price       INTEGER      '
 date             DATE         '
 PRIMARY KEY (product_id);



