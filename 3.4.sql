-- rowname
SELECT product_id, product_name, sale_price, cost_price
  FROM Product
 ORDER BY sale_price DESC, product_id;

-- rownumber
SELECT product_id, product_name, product_name, cost_price
  FROM Product
 ORDER BY 3 DESC, 1;

#
SELECT product_category, COUNT(*)
  FROM Product
 GROUP BY product_category
 ORDER BY COUNT(*);

#
SELECT product_name, sale_price, cost_price
  FROM Product
 ORDER BY product_id;

#AS id,sp #tag
SELECT product_id AS id, product_name, sale_prices AS sp, cost_price
  FROM Product
 ORDER BY sp, id;

#
SELECT product_id, product_name, product_price, cost_price
  FROM Product
 ORDER BY cost_price;

#
SELECT product_id, product_name, sale_price, cost_price
  FROM Product
 ORDER BY sale_price, product_id;

# DESC descendent
SELECT product_id, product_name, sale_price, cost_price
  FROM Product
 ORDER BY sale_price DESC

#SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY
SELECT product_id, product_name, sale_price, cost_price
  FROM Product
 ORDER BY sale_price;

#
SELECT product_id, product_name, sale_price, cost_price
  FROM Product;
