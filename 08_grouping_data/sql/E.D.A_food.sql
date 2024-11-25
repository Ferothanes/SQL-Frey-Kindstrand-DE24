--shows table
SELECT * FROM main.food; 

-- shows the ids, DISTINCT removes all duplicates
SELECT
	DISTINCT id
FROM
	main.food; 

-- COUNTS all DISTICT id's
SELECT
	COUNT(DISTINCT id)
FROM
	main.food;

--Counts all rows in table
SELECT COUNT(*) AS number_rows FROM main.food; 

-- see the table 
DESC main.food;

--filtering weeks
SELECT * FROM main.food WHERE week_id Between '2004-04' AND '2004-06';

