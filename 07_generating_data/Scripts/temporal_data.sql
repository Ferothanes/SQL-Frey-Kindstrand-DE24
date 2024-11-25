SELECT
	*
FROM
	generate_series (
	DATE '2024-11-01',
	DATE '2024-11-30',
	INTERVAL '1 day') AS t(November);
	
-- Date dimension
SELECT
	strftime(date_series, '%Y-%m-%d') AS date,  
	month(date_series) AS month,
	week(date_series) AS week_number,
	weekday(date_series) AS day_of_week,
FROM
	generate_series (
	DATE '2024-11-01',
	DATE '2024-11-30',
	INTERVAL '1 day') AS t(date_series);
	
------
SELECT DATE '2000-01-01' + INTERVAL (i) MONTH
FROM range(12) t(i);
