--CLAUSE: Is a SQL statement that defines what the query does, it controls or filters the data retreived, 
---WHERE, LIIMT, GROUP BY, ORDER BY, HAVING 

SELECT * FROM data_jobs;

--COUNT, GROUP BY, WHERE, HAVING, LIMIT, LIKE, DISTINCT 

SELECT
	job_title,
	salary,
	COUNT(*) AS number_of_jobs_in_list
FROM
	data_jobs
WHERE
	salary > 200000
GROUP BY
	salary,
	job_title
HAVING
	COUNT(*) > 5
LIMIT 10;

-----------------------------------------------------------
SELECT * FROM data_jobs;

-- COUNT
-- aggregate function that calculates the number of rows in a result set or within a group.
SELECT COUNT(*) from data_jobs;

-- GROUP BY
-- Groups rows with the same values in specified columns, often used with aggregate functions like SUM, COUNT, etc.
SELECT job_title, COUNT(job_title) AS number_of_jobs FROM data_jobs GROUP BY job_title;

-- ORDER BY
-- sorts rows in a spesific order 
SELECT job_title, salary FROM data_jobs ORDER BY salary ASC;
 
-- WHERE (BEFORE aggregating)
-- Filters rows based on a condition before any grouping or aggregation occurs. 
SELECT job_title, salary FROM data_jobs WHERE salary < 100000;

-- HAVING (AFTER aggregating)
-- HAVING filters the aggregated or grouped data, works on aggregated results (e.g., SUM(), COUNT()).

SELECT -- Retrieves the job_title and the total salary for each job_title.
	job_title,
	SUM(salary)
FROM
	data_jobs
GROUP BY --Groups rows in the data_jobs table by the job_title column. For each unique job_title, rows are grouped together, and the total salary is calculated for that group.
	job_title
HAVING
	SUM(salary) < 5000000;

--LIMIT
-- Restricts the number of rows returned in the result set. 
SELECT * FROM your_table_name LIMIT 10;

--LIKE: LIKE 'A%' matches any string starting with "A". '%a%' anything with a in it
SELECT job_title FROM data_jobs WHERE job_title LIKE 'A%'; --LIKE

--DISTINCT 
SELECT DISTINCT(job_title) FROM data_jobs;


---------------------------------------------------------------------------

---FUNCTION: in a built-in operation in SQL that takes inputs and returns values. It returns calculated or manipulated data.
--COUNT(), SUM(), AVG(), UPPER(), ROUND() etc

--COUNT
SELECT COUNT(*) FROM data_jobs; --räknar alla rows i data_jobs
SELECT job_title, COUNT(job_title) FROM data_jobs GROUP BY job_title; --grupperar alla jobbtitlar och räknar hur många som finns
--SUM()
SELECT SUM(salary) FROM data_jobs; --summerar alla salary

--MIN/MAX/AVG(),--ROUND() 
SELECT 
	job_title,
	MIN(salary) AS min_salary, 
	MAX(salary) AS max_salary,
	ROUND(AVG(salary), 0) AS Average
FROM
data_jobs
GROUP BY job_title;

--UPPER/LOWER()
SELECT UPPER(job_title) FROM data_jobs;
--NOW/GETDATE()
SELECT NOW();
SELECT GETDATE;



--EXCLUDE is a window function caluse, takes all * but excludes entered values. 
SELECT
	* EXCLUDE(salary_currency,
	employee_residence,
	work_year,
	company_size)
FROM
	data_jobs
ORDER BY
job_title,
salary_in_usd ASC;


-- STRING --------------------
-- LIKE, SUBSTRING, REPLACE, LENGTH, LOWER/UPPER, TRIM, CONCAT, LEFT/RIGHT, CONTAINS

--SUBSTRING --Extracts a portion of a string.
SELECT SUBSTRING('Hello World', 1, 5) AS results; --1: START, 5: END 

--REPLACE -- Replaces occurrences of a substring with another substring.
SELECT REPLACE('DuckDB is great', 'great', 'awesome') AS results;

--LENGTH -- Calculates the number of characters in a string.
SELECT LENGTH('Duckdb') AS results;

--TRIM -- Removes leading and trailing spaces (or specified characters) from a string.
SELECT TRIM('   Hello World   ') AS results;

--CONCAT -- Joins two or more strings together.
SELECT CONCAT('Hello', ' ', 'World') AS Result;

--LEFT/RIGHT -- Retrieves a specified number of characters from the left or right
SELECT LEFT('DuckDB', 4) AS Result;
SELECT RIGHT('DuckDB', 2) AS Result;

--CONTAINS 
SELECT CONTAINS('Hello World', 'World'); --RETURNS TRUE 

--Utdrag & matchning 1 = first letter
SELECT'Hello'[:] AS AllLetters;
SELECT'Hello'[1] AS FirstLetter;
SELECT'Hello'[1:4] AS FirstFour;
SELECT'Hello'[-1] AS StartFromBack;
SELECT'Hello'[-3:] AS LastThree;








