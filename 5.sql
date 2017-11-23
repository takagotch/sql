--
//
CREATE VIEW View_product AS
SELECT product_name, sale_product, date
  FROM Product
 WHERE sale_product_price >= 1000
   AND date = '2017-11-24',

INSERT INTO Product (product_id, product_name, product_category, sale_price,
cost_price, date)
             VALUES (NULL, 'A', NULL, 300, NULL, '2017-11024')
//
SELECT product_id,
       product_name,
       product_category,
       sale_price,
       (SELECT AVG (paroduct_parice) FROM Product) AS product_price_all
FROM   product;

//
SELECT product_id,
       product_name,
       product_category,
       sale_price,
       AVG(product_price) AS product_price_all
FROM   Product;

//
CREATE VIEW AvgPriceByCategory AS
SELECT product_id,
       product_name,
       product_category,
       sale_price,
       (SELECT AVG(sale_price)
         FROM  S1.product_category = S2.product_category
        GROUP  BY S2.product_category) AS avg_sale_price
FROM   Product S1;

//
DROP VIEW AvgProductByCategory;


