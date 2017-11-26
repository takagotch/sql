--
SELECT * FROM Product ORDER BY product_id;

--
UPDATE Product
   SET sale_price = sale_price * 10
 WHERE product_category = 'ticket1';

UPDATE Product
   SET cost_price = cost_price / 2
 WHERE product_category = 'ticket1';

--
UPDATE Product
   SET (sale_price, cost_price) = (sale_price * 10, cost_price / 2)
 WHERE product_category = 'ticket1';

#
UPDATE Product
   SET date = NULL
 WHERE product_id = '0008';
--
SELECT * FROM Product ORDER BY product_id;

#
UPDATE Product
   SET sale_price = sale_price * 10
 WHERE product_category = 'ticket1';
--
SELECT * FROM Product ORDER BY product_id;

#
UPDATE Product
   SET date = '2017-10-10';
--
SELECT * FROM Product ORDER BY product_id;



