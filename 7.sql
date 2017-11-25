---
SELECT *
  FROM Product
UNION
SELECT *
  FROM Product
INTERSECT
SELECT *
  FROM Product
ORDER BY Product_id;

/*
*
product_id | priduct_name | product_category | sale_price | cost_price | date
-----------+--------------+------------------+------------+------------+-------
0001       | a            | A                |      10000 |       5000 | 2017-11-26
0002       | b            | B                |      50000 |      30000 | 2017-11-14
*
*/
#COALESCE NULL --> shop_id

SELECT COALESCE (TS.shop_id, 'unknown') AS shop_id,
       COALESCE (TS.shop_name, 'unknown') AS shop_name,
       S.shop_id,
       S.shop_name,
       S.sale_price
  FROM ShopProduct TS RIGHT OUTER JOIN Product S
    ON TS.product_id = S.product_id
 ORDER BY shop_id;


shop_id | shop_name | product_id |product_name | sale_price
--------+-----------+------------+-------------+------------
000A    | SGN       | 0002       | a           |       50000
000B    | KNC       | 0003       | A           |       10000
