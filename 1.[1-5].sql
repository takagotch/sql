#
ALTER TABLE Product RENAME TO Product;

-- DML:date
BEGIN TRANSACTION;
INSERT INTO Product VALUES ('0001', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
INSERT INTO Product VALUES ('0002', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
INSERT INTO Product VALUES ('0003', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
INSERT INTO Product VALUES ('0004', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
INSERT INTO Product VALUES ('0005', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
INSERT INTO Product VALUES ('0006', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
INSERT INTO Product VALUES ('0007', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
INSERT INTO Product VALUES ('0008', 'ticket1', 'ticket', 1000, 500, '2017-11-27');
COMMIT;

#
ALTER TABLE Product ADD COLUMN product_name_jp VARCHAR(100);

#
ALTER TABLE Product DROP COLUMN product_name_jp;

#
DROP TABLE Product;

#
product_id       CHAR(4)      NOT NULL,
product_name     VARCHAR(100) NOT NULL,
product_category VARCHAR(32)  NOT NULL,
PRIMARY KEY (product_id)

#
CREATE TABLE Product
(product_id       CHAR(4)      NOT NULL,
 product_name     VARCHAR(100) NOT NULL,
 product_category VARCHAR(32)  NOT NULL,
 sale_price       INTEGER      ,
 cost_price       INTEGER      ,
 date             DATE         ,
 PRIMARY KEY (product_id);

#
CREATE DATEBASE shop;


