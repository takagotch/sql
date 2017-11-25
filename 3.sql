

SELECT product_category, SUM(sale_price), SUM(cost_price)
  FROM Product
 GROUP BY product_category
HAVING SUM(sale_price) > SUM (product_price) * 1.5;

SELECT *
  FROM Product
 ORDER BY date DESC, sale_price;



