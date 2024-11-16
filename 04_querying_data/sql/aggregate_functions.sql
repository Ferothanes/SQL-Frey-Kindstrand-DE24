SELECT
	COUNT(*) --RÄKNAR ALLA RADER
FROM 
	main.data_jobs;

--AS döper om 
SELECT
	MIN(salary_in_usd) AS min_salary_usd, 
	AVG(salary_in_usd) AS average_salary_usd,
	MEDIAN(salary_in_usd) AS median_salary_usd,
	MAX(salary_in_usd) AS max_salary_usd,
FROM 
	main.data_jobs;

-- tar ett visst antal rader och aggregeras för att få en viss output 

