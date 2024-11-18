SELECT
	*
FROM
	main.data.data_jobs dj;

SELECT
	COUNT(*)
FROM
	main.data_jobs dj
WHERE
	salary_in_usd < 50000;