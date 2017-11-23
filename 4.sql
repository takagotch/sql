INSERT INTO ProductGain(product_id, product_name, sale_price, cost_price, gain)
SELECT product_id, product_name, sale_price, cost_price - gain
FROM product;

UPDATE ProcuctGain
SET sale_price = 3000
WHERE product_id = '0001';

UPDATE ProductGain
SET gain = sale_price - cost_price
WHERE product_id = '0001';



