SELECT product_name,
       CASE WHEN product_category = 'ticket1'
	    THEN 'A: ' ||product_category
            WHEN product_category = 'ticket2'
	    THEN 'B: ' ||product_category
	    WHEN product_category = 'ticket3'
	    THEN 'C: ' ||product_category
	    ELSE NULL
       END AS abc_product_category
  FROM Product;

SELECT product_name,
       CASE product_category
            WHEN 'ticket1' THEN 'A: ' || product_category
	    WHEN 'ticket2' THEN 'B: ' || product_category
	    WHEN 'ticket3' THEN 'C: ' || product_category
	    ELSE NULL
       END AS abc_product_category
  FROM Product;
