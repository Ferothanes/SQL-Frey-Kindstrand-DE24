desc;
SELECT * FROM data_jobs;

SELECT
	job_title,
	experience_level,
	MAX(salary_in_usd) AS Maximum_salary
FROM
	data_jobs
GROUP BY
	job_title,
	experience_level
ORDER BY
Maximum_salary DESC;

--FILTERING DATA -------------------------------

SELECT * FROM data_jobs;

--Pattern matching 
--LIKE clause. (a% = starts with a) (%neer% = has neer in the word)
SELECT * FROM data_jobs WHERE job_title LIKE '%neer%';
--numeric comparison/multiple conditions 
SELECT * FROM data_jobs WHERE salary >= 200000 AND experience_level = 'Senior';
--range filtering
SELECT * FROM data_jobs WHERE (salary > 100000) AND (salary < 200000);
SELECT * FROM data_jobs WHERE salary BETWEEN 100000 AND 200000; --Maybe a better option

--check for NULL
SELECT * FROM data_jobs WHERE salary IS NULL;


-- CRUD Operations ---------------------------------

--CREATE
INSERT INTO table_name (column1, column2) VALUES ('value1', value2);

--READ
SELECT column1, column2 FROM table_name WHERE condition;

--UPDATE
UPDATE table_name SET column1, = value1, column2 = value2 WHERE condition;
UPDATE data_jobs SET employee_residence = 'SVE' WHERE employee_residence = 'US';
--change column name 
ALTER TABLE data_jobs RENAME COLUMN salary TO salary_in_sek;

--DELETE
DELETE FROM table_name WHERE condtion;
--delete column
ALTER TABLE data_jobs DROP COLUMN salary_currency;

-- Grouping data








