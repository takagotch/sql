SELECT product_name, product_category, sale_price,
       RANK () OVER (ORDER BY product_price) AS ranking
  FROM Product
 ORDER BY ranking;

SELECT product_name, product_category, sale_price,
       RANK () OVER (ORDER BY sale_price) AS ranking
  FROM Product;

SELECT product_id, product_name, sale_price,
       AVG (sale_price) OVER (ORDER BY product_id
                               ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS moving_avg
  FROM Product;

SELECT product_id, product_name, sale_price,
       AVG (sale_price) OVER (ORDER BY product_id
                               ROWS 2 PRECEDING) AS moving_avg
  FROM Product;

SELECT product_id, product_name, sale_price,
       AVG (sale_price) OVER (ORDER BY product_id) AS current_avg
  FROM Product;

SELECT product_id, product_name, sale_price,
       SUM (sale_price) OVER (ORDER BY product_id) AS current_sum
  FROM Product;

SELECT product_name, product_category, sale_price,
       RANK () OVER (ORDER BY sale_price) AS ranking,
       DENSE_RANK () OVER (ORDER BY sale_price) AS dense_ranking,
       ROW_NUMBER () OVER (ORDER BY sale_price) AS row_num
  FROM Product;

SELECT product_name, product_category, sale_price,
       RANK () OVER (ORDER BY product_price) AS ranking
  FROM Product;

SELECT product_name, product_category, sale_price,
       RANK () OVER (PATITION BY product_category
                        ORDER BY sale_price) AS ranking
  FROM Product;



