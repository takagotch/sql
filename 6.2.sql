#SELECT *
SELECT product_name, sale_price
  FROM Product AS S
 WHERE NOT EXISTS (SELECT *
                     FROM ShopProduct AS SP
	            WHERE SP.shop_id = '000A'
	              AND SP.product_id = P.product_id);

#
SELECT product_name, sale_price
  FROM Product AS P
 WHERE EXISTS (SELECT 1 --
                 FROM ShopProduct AS SP
	        WHERE SP.shop_id = '000C'
	          AND SP.product_id = P.product_id);

#EXISTS()
(SELECT *
	  FROM ShopProduct AS SP
	 WHERE SP.shop_id = '000C'
	   AND SP.product_id = P.product_id)

#EXISTS
SELECT product_name, sale_price
  FROM Product AS S
 WHERE EXISTS (SELECT *
                 FROM ShopProduct AS SP
	        WHERE SP.shop_id = '000C'
	          AND SP.product_id = P.product_id);
#
--
SELECT product_name, sale_price
  FROM Product
 WHERE product_id NOT IN ('0001', '0002', '0003');

# NOT IN ()
SELECT product_name, sale_price
  FROM Product
 WHERE product_id NOT IN (SELECT product_id
                            FROM ShopProduct
		           WHERE shop_id = '000A');

#
--
SELECT product_name, sale_price
  FROM Product
 WHERE product_id IN ('0003', '0004', '0006','0007');


#
SELECT product_name, sale_price
  FROM Product
 WHERE product_id IN (SELECT product_id
                        FROM ShopProduct
		       WHERE shop_id = '000C');

#
SELECT product_id
  FROM ShopProduct
 WHERE shop_id = '000C';

#
CREATE TABLE ShopProduct
(shop_id    CHAR(4)      NOT NULL,
 shop_name  VARCHAR(200) NOT NULL,
 product_id CHAR(4)      NOT NULL,
 total      INTEGER      NOT NULLM
 PRIMARY KEY (shop_id, product_id);

#
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price NOT IN (120, 500, 5000)

#
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price IN (320, 500, 5000);

#
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price =  320,
    OR cost_price =  500,
    OR cost_price = 5000;

#IS NOT NULL
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price IS NOT NULL;

#BETWEEN, < >,
SELECT product_namem sale_price
  FROM Product
 WHERE sale_price > 100
   AND sale_price < 1000;

SELECT product_name, sale_price
  FROM Product
 WHERE sale_price BETWEEN 100 AND 1000;

#
SELECT *
  FROM Product
 WHERE sale_price LIKE 'ticket__';

SELECT *
  FROM Product
 WHERE sale_price LIKE 'ticket__';

SELECT *
  FROM Product
 WHERE sale_price LIKE '%ticket';

SELECT *
  FROM Product
 WHERE sale_price LIKE '%ticket%';

SELECT *
  FROM Product
 WHERE sale_price LIKE 'ticket%';

#
---DDL: table
CREATE TABLE 
( sale_price VARCHAR(6) NOT NULL,
  PRIMARY KEY (sale_price));
---DML: data
BEGIN TARANACTION;
INSERT INTO Product (sale_price) VALUES ('ticket1');
INSERT INTO Product (sale_price) VALUES ('1tikcet');
INSERT INTO Product (sale_price) VALUES ('ticket11');
INSERT INTO Product (sale_price) VALUES ('11ticket');
INSERT INTO Product (sale_price) VALUES ('ticket1ticket');
INSERT INTO Product (sale_price) VALUES ('ticket11ticket');
COMMIT;


