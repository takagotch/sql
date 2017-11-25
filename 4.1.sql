#COMMIT;
BEGIN TRANSACTION;

  UPDATE Product
     SET sale_price = sale_price - 1000
   WHERE priduct_name = 'ticket1';

  UPDATE Product
     SET sale_price = sale_price + 1000
   WHERE product_name = 'ticket2';

COMMIT;

#ROLLBACK;
BEGIN TRANACTION;
 
  UPDATE Product
     SET sale_price = sale_price - 1000
   WHERE product_name = 'ticket1';

  UPDATE Product
     SET sale_price sale_price + 1000
   WHERE product_name = 'ticket2';

ROLLBACK;


