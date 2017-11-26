#GROUPING NULL-NULL
SELECT CASE WHEN GROUPING(product_category) = 1
            THEN 'ProductCategory Total'
	    ELSE product_category END AS product_category,
	    CASE WHEN GROUPING(date) = 1
	         THEN 'Date Total'
	    SUM(sale_price) AS sum_price
       FROM Product
      GROUP BY GROUPING SETS (product_category, date);

SELECT CASE WHEN GROUPING(product_category) = 1
            THEN 'ProductCategory Total'
	    ELSE product_category END AS product_category,
       CASE WHEN GROUPING(date) = 1
	    THEN 'Date Total'
            ELSE CAST(date AS VARCHAR(16)) END AS date,
  FROM Product
 GROUP BY CUBE(product_category, date);

SELECT CASE WHEN GROUPING(product_category) = 1
            THEN 'ProductCategory Total'
	    ELSE product_category END AS product_category,
       CASE WHEN GROUPING(date) = 1
	    THEN 'Date Total'
	    ELSE CAST(date AS VARCHAR(16)) END AS date, /*CAST(date AS VARCHAR(16))*/
       SUM(sale_price) AS sum_price
  FROM Product
 GROUP BY ROLLUP(product_category, date);


SELECT GROUPING(product_category) AS product_category,
            GROUPING(date) AS date, SUM(sale_price) AS sum_price
  FROM Product
 GROUP BY ROLLUP(product_category, date);

SELECT product_category, date, SUM(product_price) AS sum_price
  FROM Product
 GROUP BY product_category, date;

SELECT product_category, date, SUM(sale_price) AS sum_price
  FROM Product
 GROUP BY ROLLUP(product_category, date);

SELECT product_category, SUM(sale_price) AS sum_price
  FROM Product
 GROUP BY ROLLUP(product_category);

SELECT 'Total' AS prodcut_category, SUM(sale_price)
  FROM Product
UNION ALL
SELECT product_category, SUM(sale_price)
  FROM Product
GROUP BY product_cateogory;

SELECT product_category, SUM(sale_price)
  FROM Product
 GROUP BY product_category;


