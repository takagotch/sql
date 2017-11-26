/*TABLE VIEW*/
#
DROP VIEW ProudctSum;
#
SELECT * FROM Product;
SELECT * FROM ProductOffice;
#
CREATE VIEW ProductOffice (product_id, product_name, product_category, sale_price, cost_price, date)
AS
SELECT *
  FROM Product
 WHERE product_category = 'Office';
#
INSERT INTO ProductOffice VALUES ('0009', 'ticket1', 'ticket2', 95, 10, '2017-11-26');
INSERT INTO ProductSum VALUES ('ticket3', 5);

--
CREATE VIEW ProductSum (product_category, cnt_product)
AS
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category
 ORDER BY product_category;

#
CREATE VIEW ProductSumOffice (product_category, cnt_product)
AS
SELECT product_category, cnt_product
  FROM ProductSum
 WHERE product_category = 'Office';

--
SELECT product_category, cnt_product
  FROM ProductSumOffice;

#
SELECT product_category, cnt_product
  FROM ProductSum;

#
CREATE VIEW ProductSum (product_category, cnt_product)
AS
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category;

#
SELECT product_category, SUM(sale_price), SUM(cost_price)
  FROM Product
 GROUP BY product_category;

