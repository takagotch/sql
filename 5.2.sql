--
SELECT product_id,
       product_name,
       sale_price,
       (SELECT AVG(sale_price)
          FROM Product
         GROUP BY product_category) AS avg_price
  FROM Product;

#
SELECT product_category, AVG(sale_price)
  FROM Product
 GROUP BY product_category
HAVING AVG(sale_price) > (SELECT AVG(sale_price)
                            FROM product);

#
SELECT product_id,
       product_name,
       product_price,
       (SELECT AVG(sale_price)
          FROM Product) AS avg_price
  FROM Product;

--
SELECT product_id, product_name, sale_price
  FROM Product
 WHERE sale_price > 2097.5

--
SELECT AVG(sale_price)
  FROM Product;

#
SELECT product_id, product_name, sale_price
  FROM Product
 WHERE sale_price > (SELECT AVG(sale_price)
                       FROM Product);


--
SELECT product_id, product_name, sale_price
  FROM Product
 WHERE sale_price > AVG(sale_price);

#
SELECT AVG(sale_price)
  FROM Product;

#
SELECT product_category, cnt_produt
  FROM (SELECT *
          FROM (SELECT product_category, COUNT(*) AS cnt_product
                  FROM Product
                 GROUP BY product_category) AS ProductSum
          WHERE cnt_product = 4) AS ProductSum2;

#
SELECT product_category, COUNT(*) AS cnt_product
  FROM Product
 GROUP BY product_category;
SELECT product_category, cnt_product
  FROM ProductSum;

--
SELECT product_category, cnt_product
  FROM (SELECT product_category, COUNT(*) AS cnt_product
          FROM Product
         GROUP BY product_category) AS ProductSum;

--
CREATE VIEW ProductSum (product_category, cnt_product)
AS
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category;
--
SELECT product_category, cnt_product
  FROM ProductSum;


