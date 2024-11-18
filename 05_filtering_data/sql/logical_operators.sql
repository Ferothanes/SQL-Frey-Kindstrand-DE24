--- Logiska operatorer python och andra språk = 5000 < x < 10000 OR (x > 5000) && (x < 10000)

SELECT
	*
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 200000 AND 500000;
	
SELECT
	job_title,
	experience_level,
	employment_type,
	ROUND(salary_in_usd * 11.01/12) AS salary_sek_month --tar usd*11.01/12 = valuta i sek och döper om 
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 200000 AND 500000
	AND job_title = 'Data Engineer' --visar bara data engineers
	--AND experience_level = 'Entry level'; --//visar bara entry level data engineers
	--AND employment_type = 'FT'
ORDER BY 
	salary_sek_month
--DESC;

	
	----------------------------------------
SELECT 
	CASE
		WHEN employment_type = 'FT' THEN 'Full-time'
		WHEN employment_type = 'PT' THEN 'Part-time'
		WHEN employment_type = 'F' THEN 'Freelance'
	END AS employment_type,
	* EXCLUDE (employment_type)
FROM
	main.data_jobs;
	
	