#
SELECT product_category, COUNT(*)
  FROM Product
 WHERE product_category = 'ticket1'
 GROUP BY product_category;

#
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category
HAVING product_category = 'ticket1';

#
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category
HAVING product_name = 'ticket1';

#
SELECT product_category, AVG(sale_price)
  FROM Product
 GROUP BY product_category
HAVING AVG(sale_price) >= 2500;

#
SELECT product_category, AVG(sale_price)
  FROM Product
 GROUP BY product_category;

#
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category;

#
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category
HAVING COUNT(*) = 2;

