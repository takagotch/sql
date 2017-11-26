#
SELECT product_name, product_category, date
  FROM Product
 WHERE product_category = 'Office'
   AND date = '2017-11-26'
    OR date = '2017-11-27';
#
SELECT product_name, product_category, date
  FROM Product
 WHERE product_category = 'Office'
   AND (   date         = '2017-11-23'
        OR date         = '2017-11-26');

#
SELECT product_name, cost_price
  FROM Product
 WHERE product_category = 'ticket1'
    OR sale_price >= 3000;

#
SELECT product_name, cost_price
  FROM Product
 WHERE product_category = 'ticket1'
   AND sale_price >= 3000;

#
SELECT product_name, product_category, sale_price
  FROM Product
 WHERE NOT sale_price >= 1000;

#
SELECT product_name, product_category
  FROM Product
 WHERE sale_price < 1000;

#
SELECT product_name, product_category, sale_price
  FROM Product
 WHERE sale_price >= 1000;




