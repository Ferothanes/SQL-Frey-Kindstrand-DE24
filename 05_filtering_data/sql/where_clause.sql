SELECT
	*
FROM
	main.data.data_jobs dj;

--WHERE -- filterering -- all salary_in_usd med lön under 50.000
--COUNT(*) counts all rows (inkl null) som är < 50000 och AS döper om kolumnen till jobs_lower_than
SELECT
	COUNT(*) AS number_rows_lower_than_50k
FROM
	main.data_jobs dj
WHERE
	salary_in_usd < 50000;
	
-------------------------------
--focus on experience_level
-- SE, MI, EX, EN. Denna information finns i metadatan/data om data.

--Only shows experience_level (SE, EN, MI, EX)
SELECT
	DISTINCT experience_level
FROM
	main.data_jobs;

--WHERE filter shows list but only SE
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	experience_level = 'SE'; 


-----------------
SELECT
	MEDIAN(salary_in_usd) AS median_salary_usd
FROM
	main.data_jobs dj
WHERE
	experience_level = 'EN';

---------------------

SELECT
	MEDIAN(salary_in_usd) AS median_salary_usd
FROM
	main.data_jobs dj
WHERE
	experience_level = 'MI';
	







