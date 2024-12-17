--QUERYING TABLES WITH SELECT---------------------

--Fetch columns
SELECT * FROM main.data_jobs dj;

--calculate what usd is in SEK and alter it
UPDATE main.data_jobs SET salary_in_sek = (salary_in_usd * 10.88);

--fetch job and salary
SELECT job_title, salary_in_sek FROM main.data_jobs dj ;

--Round the salary DECIMALS
SELECT ROUND(salary_in_sek, 2) FROM main.data_jobs dj ; --theres no decimals...

--Sort with ORDER BY
--Sort job_titles by salary in ASC order
SELECT job_title, salary_in_sek FROM main.data_jobs dj ORDER BY salary_in_sek ASC;

--Aliases
--AS is used to rename columns
SELECT salary_in_sek AS salary FROM main.data_jobs;
--AS can also rename tables
SELECT data.job_title FROM data_jobs AS data;


--FILTERING WITH WHERE------------------------------

--Comparisopn operators 
--fetch jobs who have salary over 200.000
SELECT
	job_title,
	salary_in_usd
FROM
	main.data_jobs dj
WHERE
	salary_in_usd > 200000
ORDER BY
	salary_in_usd ASC;
--fetch jobs that are either seniors OR mid lvl AND work remote
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	(experience_level = 'Senior'
		OR experience_level = 'Mid lvl')
	AND remote_ratio = 100;
--fetch job_title that starts with Data
SELECT * FROM main.data_jobs dj WHERE job_title LIKE 'A%'; --starts with
--fetch job_title that ends with r OR the 2nd letter is s OR it contains g anywhere
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	job_title LIKE '%r' --last letter
	OR job_title LIKE 'r_%'--second letter
	OR job_title LIKE '%g%';--contains g
	
--BETWEEN and IN
--Fetch salaries between 100000 - 200000
SELECT * FROM main.data_jobs dj WHERE salary_in_usd BETWEEN 100000 AND 200000;
--fetch titles that are data engineer and data analyst
SELECT * FROM main.data_jobs dj WHERE job_title IN('Data Engineer', 'Data Analyst');

--NOT and NULLS
--fetch titles that are not missing a value
SELECT job_title FROM main.data_jobs dj WHERE work_year IS NOT NULL;
--fetch titles that are not seniors and salary is above 200000
SELECT * FROM main.data_jobs dj WHERE NOT (experience_level = 'Senior' AND salary_in_usd < 200000);

--AGGREGATION AND GROUPING---------------------------
SELECT job_title, SUM(salary_in_sek), SUM(salary_in_usd) FROM main.data_jobs dj GROUP BY job_title ;
SELECT experience_level, COUNT(experience_level), SUM(salary_in_sek) FROM main.data_jobs dj GROUP BY experience_level ;
SELECT job_title, MAX(salary_in_usd) FROM main.data_jobs dj  GROUP BY job_title ;
SELECT MAX(salary_in_usd) FROM main.data_jobs dj ;

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	job_title LIKE 'A%' AND job_title NOT LIKE 'AI%';






