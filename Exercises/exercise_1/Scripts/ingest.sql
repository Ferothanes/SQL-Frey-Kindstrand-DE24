CREATE TABLE IF NOT EXISTS data_transform AS (
SELECT
	*
FROM
	read_csv_auto('C:\Users\Freja\Desktop\SQL-Frey-Kindstrand-DE24\Exercises\exercise_1\salaries.csv')
	);

SELECT * FROM data_transform;

	