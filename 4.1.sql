#INSERT 
--
SELECT * FROM ProductCategory;

#
INSERT INTO ProductCategory (product_category, sum_sale_price, sum_cost_price)
SELECT product_category, SUM(sale_price), SUM(cost_price)
  FROM Product
 GROUP BY product_category;

--
CREATE TABLE ProductCategory
(product_category  VARCHAR(32) NOT NULL,
 sum_sale_price    INTEGER     ,
 sum_cost_price    INTEGER     ,
 PRIMARY KEY (product_category));

--
INSERT INTO ProductCopy (product_id, product_name, sale_price, cost_price, date)
SELECT product_id, product_name, product_category, sale_price, cost_price, date
FROM   Product;

--
CREATE TABLE ProductCopy
(product_id       CHAR(4)      NOT NULL,
 product_name     VARCHAR(100) NOT NULL,
 product_category VARCHAR(32)  NOT NULL,
 sale_price       INTEGER      ,
 cost_price       INTEGER      ,
 data             DATE
 PRIMARY KEY (product_id));

--
INSERT INTO ProductIns (product_id, product_name, product_category, sale_price, date) VALUES ('0008', 'ticket1', 'ticket2', 100, '2017-11-25');

--
INSERT INTO ProductIns (product_id, product_category, sale_price, cost_price, date) VALUES('0009', 'ticket1', 1000, 500, '2017-11-25')

INSERT INTO ProductIns (product_id, product_name, product_category, sale_price, cost_price, date) VALUES ('0007', 'ticket1', 'ticket2', 790, '2017-11-25');
--
SELECT * FROM ProductIns WHERE product_id = '0007';

#
CREATE TABLE ProductIns
(product_id    CHAR(4) NOT NULL,
 sale_price    INTEGER DEFAULT 0,
 PRIMARY KEY (product_id));

#
INSERT INTO ProductIns(product_id, product_name, product_category, sale_price, cost_price, date) VALUES ('0006', 'ticket1', 'ticket2', 500, NULL, '2017-11-25');

--
INSERT INTO ProductIns (product_id, product_name, product_category, sale_price, cost_price, date) VALUES ('0005', 'ticket1', 'ticket2', 6800, 5000, '2017-01-15');
--
INSERT INTO ProductIns (product_id, product_name, product_category, sale_price, cost_price, date) VALUES ('0001', 'ticket1', 'ticke2', 'ticket3', 1000, 500);
#
INSERT INTO ProductIns (product_id, product_name, product_category, sale_price, cost_price, date) VALUES ('0001', 'ticket1', 'ticket2', 1000, 500, '2917-11-25')
#
CREATE TABLE ProductIns
(product_id       CHAR(4)      NOT NULL,
 product_name     VARCHAR(100) NOT NULL,
 product_category VARCHAR(32)  NOT NULL,
 sale_price       INTEGER      DEFAULT 0,
 cost_price       INTEGER      ,
 date             DATE         ,
 PRIMARY KEY (product_id));

--
INSERT INTO ProductIns VALUES ('0002', 'ticket1', 'ticket2', 500, 320, '2017-11-25');
INSERT INTO ProductIns VALUES ('0003', 'ticket1', 'ticket2', 3000, 2800, '2017-11-25');
INSERT INTO ProductIns VALUES ('0004', 'ticket1', 'ticket2', 4000, 2800, '2017-11-26');
--
INSERT INTO ProductIns VALUES('0002', 'ticket1', 'ticket2', 500, 320, '2017-11-25'),
                             ('0003', 'ticket1', 'ticket2', 3000, 2800, '2017-11-25'),
                             ('0004', 'ticket1', 'ticket2', 4000, 2800, '2017-11-26');

