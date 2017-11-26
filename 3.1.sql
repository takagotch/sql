#
SELECT SUM(sale_price), SUM(DISTINCT sale_price)
  FROM Product;

#
SELECT DISTINCT CONST(product_category)
  FROM Product;

#
SELECT COUNT(DISTINCT product_category)
  FROM Product;

#
SELECT MAX(date), MIN(date)
  FROM Product;

/*
max   min
fist  last
begin end
is    has #bool
*/

#
SELECT MAX(sale_price), MIN(cost_price)
  FROM Product;

#
SELECT AVG(sale_price)
  FROM Product;

#
SELECT AVG(sale_price), AVG(cost_price)
  FROM Product;

#
SELECT SUM(sale_price)
  FROM Product;

#
SELECT SUM(sale_price), SUM(cost_price)
  FROM Product;

#
SELECT COUNT(*), COUNT(column_1)
  FROM NULLTable1;

SELECT COUNT(*)
  FROM Product;

SELECT COUNT(cost_price)
  FROM Product;



