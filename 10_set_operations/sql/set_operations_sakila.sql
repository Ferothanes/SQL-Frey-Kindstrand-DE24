--UNION
--first set 
SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE c.first_name LIKE 'A%' --only shows customers with the first name A
UNION 
--second set 
SELECT
	'Actor',
	a.first_name,
	a.last_name AS type,
FROM
	main.actor a
	WHERE a.first_name LIKE 'A%';
	

--INTERSECT
SELECT --SET ONE
	--'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c 
INTERSECT 
SELECT --SET TWO
	--'Actor',
	a.first_name,
	a.last_name AS type,
FROM
	main.actor a; --One name in common between both sets 
	
	
--EXCEPT 
SELECT --SET ONE
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c 
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%'
UNION ALL 
SELECT --SET TWO
	'Actor' AS type,
	a.first_name,
	a.last_name
FROM
	main.actor a 
WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%';