#
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price IS NOT NULL;

#
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price IS NULL;

#
SELECT product_name, cost_price
  FROM Product
 WHERE product_price = NULL;

#
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price = 2800;

#
SELECT product_name, cost_price
  FROM Product
 WHERE cost_price <> 2800;

#
SELECT char
  FROM Chars
 WHERE chr > '2';

--DDL
CREATE TABLE Chars
(chr CHAR(3) NOT NULL,
PRIMARY KEY (chr));

--DML
BEGIN TARANSACTION;
INSERT INTO Chars VALUES ('1');
INSERT INTO Chars VALUES ('2');
INSERT INTO Chars VALUES ('3');
INSERT INTO Chars VALUES ('4');
INSERT INTO Chars VALUES ('10');
INSERT INTO Chars VALUES ('11');
INSERT INTO Chars VALUES ('222');
COMMIT;

#
SELECT product_name, sale_price, cost_price
  FROM Product
 WHERE sale_price - cost_price >= 500;

#
SELECT product_name, product_category, date
  FROM Product
 WHERE date < '2017-11-26';

#
SELECT product_name, product_category
  FROM Product
 WHERE sale_price <> 500;

#
SELECT product_name, product_category
  FROM Product
 WHERE sale_price = 500;

#
SELECT product_name, sale_price,
       sale_price * 2 AS "sale_price_x2"
  FROM Product;

