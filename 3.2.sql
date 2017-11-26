#DISTINCT GROUP BY
SELECT DISTINCT product_category
  FROM Product;

#EER GROUP BY
#EER
SELECT product_category
  FROM Product
 GROUP BY product_category;

#EER
SELECT product_category, COUNT(*)
  FROM Prodcut
 GROUP BY product_category;

#EER
SELECT product_category, COUNT(*)
  FROM Product
 WHERE COUNT(*) = 2
 GROUP BY product_category;

#EER GROUP BY tag;
SELECT product_category AS pc COUNT(*)
  FROM Product
 GROUP BY pc;

#EER
SELECT product_name, cost_price, COUNT(*)
  FROM Product
 GROUP BY cost_price;

#WHERE, GROUP BY
SELECT cost_price, COUNT(*)
  FROM Product
 WHERE product_category = 'ticket'
 GROUP BY cost_price

#
SELECT cost_price, COUNT(*)
  FROM Product
 GROUP BY cost_price;

#
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category;









