--compound query

--UNION combines two sets, removes dublicates
SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM synthetic.sales_feb;

--the only thing on monitor was the date, thats why the "duplicate" wasnt removed
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;


--UNION ALL combines the sets but keeps all dublicates 
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION ALL
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;


--INTERSECT returns only the rows that are repeated in both lists 
SELECT * FROM synthetic.sales_jan
INTERSECT
SELECT * FROM synthetic.sales_feb;
-----only shows monitor
SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb;

-- EXCEPT returns only the ones that exists in the first set. first result set (-) second result set. inkl dublicates  
SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb;

