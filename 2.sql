
SELECT product_name, date
  FROM Product
 WHERE date >= '2017-04-28';

SELECT product_name, sale_price, cost_price
  FROM Product
 WHERE sale_price >= cost_price + 500;

SELECT product_name, sale_price, cost_price
  FROM Product
 WHERE sale_price - 500 >= cost_price;

SELECT product_name, product_category,
       sale_price * 0.9 - cost_price AS history
  FROM Product
 WHERE sale_price * 0.9 - cost_price > 100
   AND (   product_category = 'a'
        OR product_category = 'b');

