SELECT product_id, product_name, sale_pricem
       MAX (sale_price) OVER (ORDER BY product_id) AS current_max_price
  FROM Product;



SELECT date, product_name, sale_price,
       SUM (sale_price) OVER (ORDER BY COALESCE(date, CAST('0001-01-01' AS DATE))) AS current_sum_price
  FROM Product;

#2
SELECT date, product_name, sale_price,
       SUM (sale_price) OVER (ORDER BY date NULLS FIRST) AS current_sum_price
  FROM Product;
/*
date      | product_name | sale_price | current_sam_price 
----------+--------------+------------+------------------
          | A            |      40000 |              5000
2017-11-16| A            |      40000 |              5000
*/
