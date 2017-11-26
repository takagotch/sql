SELECT TS.shop_id, TS.shop_name, TS.product_id, S.product_namem S.sale_price
  FROM ShopProduct TS, Product S
 WHERE TS.product_id = S.product_id
   AND TS.product_id = '000A';


SELECT TS.shop_id, TS.shop_name, TS.product_id, S.product_name
  FROM ShopProduts AS TS CROSS JOIN Product AS S;

FROM ShopProduct AS TS INNER JOIN Product AS S
  ON SP.Product_id = S.product_id
       INNER JOIN StockProduct AS SP
          ON SP.product_id = SP.product_id

SELECT SP.shop_id, SP.shop_name, TS.product_id, P.product_name,
P.sale_price, SP.stock_total
  FROM ShopProduct AS SP INNER JOIN Product AS P
    ON SP.product_id = P.product_id
          INNER JOIN StockProduct AS SP
	     ON SP.product_id = SP.product_id
  WHERE SP.depot_id = 'D001';

--DDL: table
CREATE TABLE StockProduct
( depot_id    CHAR(4) NOT NULL,
  product_id  CHAR(4) NOT NULL,
  stock_total INTEGER NOT NULL,
  PRIMARY KEY (depot_id, product_id));
--DML: data
BEGIN TARNSACTION;
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0001', 0);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0002', 120);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0003', 200);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0004', 3);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0005', 0);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0006', 99);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0007', 999);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D001', '0008', 200);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0001', 10);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0002', 25);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0003', 34);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0004', 19);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0005', 99);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0006', 0);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0007', 0);
INSERT INTO StockProduct (depot_id, product_id, stock_total) VALUES ('D002', '0008', 18);

COMMIT;


SELECT SP.shop_id, SP.shop_name, P.product_id, P.product_name, P.sale_price
  FROM Product AS S LEFT OUTER JOIN ShopProduct AS SP
    ON SP.product_id = P.product_id;

SELECT SP.shop_id, SP.shop_name, P.product_id, P.Product_name, P.sale_price
  FROM ShopProduct AS SP RIGHT OUTER JOIN Product AS S
    ON SP.product_id = P.product_id;

SELECT SP.shop_id, SP.shop_name, SP.product_id, P.product_name, P.sale_price
  FROM ShopProduct AS SP INNER JOIN Product AS S
    ON SP.product_id = P.product_id
 WHERE SP.shop_id = '000A';

#SELECT
SELECT SP.shop_id, SP.shop_name, SP.product_id, P.product_name, P/sale_price

#ON
ON PS.product_id = P.product_id

#FROM
FROM ShopProduct AS PS INNER JOIN Product AS P

SELECT SP.shop_id, SP.shop_name, SP.product_id, P.product_name, P.sale_price
  FROM ShopProdcut AS SP INNER JOIN Product AS P
    ON SP.product_id = P.product_id;


