SELECT * FROM data_transform;
-- a) Transform employment type column based on this table
SELECT 
	CASE 
		WHEN employment_type = 'FT' THEN 'Full-time'
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part-time'
	END AS empoyment_type 
FROM main.data_transform;


-- b) Do similar for company size, but you have to figure out what the abbreviations could stand for.
-- M = medium, L = Large, S = Small

SELECT 
	CASE 
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'L' THEN 'Large'
	END AS company_size
FROM main.data_transform;


-- d) Make a salary column with Swedish currency for monthly salary

SELECT *, salary_in_usd * 10.5 AS salary_in_sek
FROM main.data_transform;

 -- e) Make a salary_level column with the following categories: low, medium, high, insanely_high. 
 -- Decide your thresholds for each category. Make it base on the monthly salary in SEK.

SELECT salary_in_sek,
	CASE 
		WHEN salary_in_sek < 600000 THEN 'Low'
		WHEN salary_in_sek < 1000000 THEN 'Medium'
		WHEN salary_in_sek < 1600000 THEN 'High'
		WHEN salary_in_sek > 1600000 THEN 'Insanely_high'
	END AS salary_level
FROM main.data_transform;

-- f) Choose the following columns to include in your table: 
--experience_level, employment_type, job_title, salary_annual_sek, salary_monthly_sek, remote_ratio, company_size, salary_level
SELECT * FROM data_transform;

SELECT
	experience_level,
	employment_type,
	job_title,
	remote_ratio,
	company_size,
	salary_level
FROM
	data_transform;



	

