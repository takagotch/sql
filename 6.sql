SELECT product_name, cost_price 
  FROM Product
 WHERE sale_price NOT IN (500, 2800, 5000)

SELECT product_name, product_price
  FROM Product
 WHERE cost_price NOT IN (500, 2800, 5000, NULL);

/*
product_name | cost_price
-------------+------------
a            |        300
b            |        780

product_name | sale_price
-------------+------------

