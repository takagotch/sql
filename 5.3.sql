SELECT AVG(sale_price)
  FROM Product
 GROUP BY product_category;

SELECT product_category, product_name, sale_price
  FROM Product AS S1
 WHERE sale_price > (SELECT AVG(sale_price)
                       FROM Product AS S2
	              WHERE S1.product_category = S2.product_category #relative_sub_query
	              GROUP BY product_category);


SELECT ticket1, ticket2, 1000 FROM Product WHERE 1000 >2500;
SELECT ticket1, ticket3, 4000 FROM Product WHERE 4000 >2500;
------------------------------------------------------------
SELECT ticket4, ticket5, 3000 FROM Product WHERE 3000 >2795;
SELECT ticket4, ticket6, 6800 FROM Product WHERE 6800 >2795;
SELECT ticket4, ticket7, 500  FROM Product WHERE  500 >2795;
SELECT ticket4, ticket8, 880  FROM Product WHERE  880 >2795;
------------------------------------------------------------
SELECT ticket9, ticket1, 100  FROM Product WHERE  100 > 300;
SELECT ticket9, ticket3, 500  FROM Product WHERE  500 > 300;


SELECT product_category, priduct_name, sale_price
  FROM Product AS S1
 WHERE sale_price > (SELECT AVG(sale_price)
                     FROM Product AS S2
	             WHERE S1.product_category=S2.product_categroy
	             GROUP BY product_category);


