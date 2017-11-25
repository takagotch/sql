SELECT SUM(CASE WHEN product_category = 'ticket1'
                THEN sale_price ELSE 0 END) AS sum_price_ticket1,
       SUM(CASE WHEN product_category = 'ticket2'
	        THEN sale_price ELSE 0 END) AS sum_price_ticket2,
       SUM(CASE WHEN product_category = 'ticket3'
                THEN sale_price ELSE 0 END) AS sum_price_ticket3,
  FROM Product;


SELECT prouct_name,
       CASE WHEN product_category = 'ticket1'
	    THEN 'A: ' || product_category
	    WHEN product_category = 'ticket2'
            THEN 'B: ' || product_category
	    WHEN product_category = 'ticket3'
	    THEN 'C: ' || product_category
	    ELSE NULL
       END AS abc_product_category
  FROM Product;

