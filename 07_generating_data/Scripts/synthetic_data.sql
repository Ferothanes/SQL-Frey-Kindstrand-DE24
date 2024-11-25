--UNNEST(ARRAY[1, 2, 3, 4, 5]) AS number;  -- 'unnest' takes the array [1, 2, 3, 4, 5] and returns each value as a separate row.
SELECT UNNEST (generate_series(1,10)) as id;

--RANDOM() generates a random floating-point number between 0 and 1.te.x 0,435346
SELECT RANDOM();
SELECT * FROM generate_series(10);

--RANDOM() * 6 scales this number to the range 0 to just under 6.
--RANDOM() * 6 + 1 shifts the range to be from 1 to just under 7.
--FLOOR() rounds the result down to the nearest whole number, ensuring the result is an integer between 1 and 6.

SELECT
	FLOOR(RANDOM()* 6 + 1) AS dice
FROM
	generate_series(10);



SELECT
    UNNEST(generate_series(100)) AS id,  -- Skapar 100 rader med siffror från 1 till 100
    'student_' || id AS student, -- Skapar studentnamn genom att lägga till 'student_' före varje id
    ROUND(RANDOM()*100) AS score; -- Generates a random score between 0 and 100 by multiplying RANDOM() (0-1) by 100 and rounding it

    
SELECT
	id,	'student_' || id AS student,
	score,
	CASE
		WHEN score < 50 THEN 'F'
		WHEN score < 75 THEN 'G'
		ELSE 'VG'
	END AS grade
FROM
	(	
	SELECT
	UNNEST (generate_series(100)) AS id,
	ROUND(RANDOM()* 100) AS score,
	);
