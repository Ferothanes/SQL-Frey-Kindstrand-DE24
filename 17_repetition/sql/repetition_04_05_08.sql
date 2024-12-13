DESC;
--wildcard selection /select star / select all
-- schema_name.table_name ---> namespacing, hjälper att undvika konflikter mellan namn
SELECT * FROM main.payment p;

-- not defining what schema you want, DuckDB will look at main.schemas by defualt 
SELECT * FROM payment;
-- fully qualified statement/name
SELECT * FROM sakila.main.payment p; 
---------------------
SELECT
	*
FROM
	main.payment
LIMIT 10;
--------------------
SELECT
	customer_id,
	amount,
	payment_date
FROM
	main.payment p ;
----------------------
SELECT
	* EXCLUDE
	(customer_id,
	amount,
	payment_date)
FROM
	main.payment p ;
-----------------------
--aggregerings funktioner--many to one mapping--SUM, COUNT, MIN, MAX

SELECT
	COUNT(*) AS payment,
	MIN(amount) AS min_amount, 
	ROUND(AVG(amount), 2) AS average_amount,
	MAX(amount) AS max_amount
FROM
	main.payment p;

--Filterar data
SELECT
	*
FROM
	main.payment
WHERE
	amount > 4.2
--om vi vill sortera
ORDER BY amount;
-------------------------
--create a new column with amount classfications
SELECT
	CASE
		WHEN .. THEN
		WHEN .. THEN
	END
	
	FROM
		main.payment p;

-----------------------
SELECT
	amount,
	CASE
		WHEN amount < 3.5 THEN 'low cost'
		WHEN amount < 7.5 THEN 'medium cost'
		ELSE 'high cost'
	END AS Calculations
FROM
	main.payment p;

-------------------------------------
SELECT * FROM main.customer c ;

SELECT
	first_name,
	last_name,
	store_id,
	CASE 
		WHEN store_id = 1 THEN 'Deny'
		WHEN store_id = 2 THEN 'Accept'
		ELSE 'Call Saul'
	END AS VIP
FROM main.customer c;
--------------------------------------
CREATE VIEW IF NOT EXISTS main.payment_level AS (
SELECT
	*,
	CASE
		WHEN amount < 3.5 THEN 'low cost'
		WHEN amount < 7.5 THEN 'medium cost'
		ELSE 'high cost'
	END AS Calculations
FROM
	main.payment p);
-------------------------------------
SELECT
	Calculations,
	COUNT(amount) AS number_per_level, 
	ROUND(AVG(amount), 2) AS mean_amount
FROM
	main.payment_level
GROUP BY
	Calculations;
HAVING --filtrering efter aggregering
;






