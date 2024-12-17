-- id --> food
-- remove googleTopic 
-- week_id --> week
-- year column
-- value --> number_of_searches

SELECT * FROM main.food;


CREATE TABLE IF NOT EXISTS main.cleaned_food AS (
SELECT
	id AS food,
	SUBSTRING(week_id, 1, 4) AS year, --week[:4] AS year --//like pythons slicing, also works
	SUBSTRING(week_id, 6) AS week,--week_id[6:] AS week, 
	value AS number_searches
FROM
	main.food);

DESC;
SELECT * FROM main.cleaned_food;


SELECT
	id AS food,
	SUBSTRING(week_id, 1, 4) AS year,
	week_id[6:] AS week, 
	value AS number_searches
FROM
	main.food;



SELECT
	food,
	week,
	SUBSTRING(food, 1, 5)
FROM
	main.cleaned_food cf ;






