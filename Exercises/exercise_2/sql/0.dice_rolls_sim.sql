  -- a) Generate 10 rows of dice rolls data
CREATE TABLE dice_rolls (
    id INTEGER,
    roll INTEGER
);

SELECT
    ROW_NUMBER() OVER () AS roll_number,
	FLOOR(RANDOM() * 6 + 1) AS dice
FROM
	generate_series(1,
	10);

  -- b) Calculate the average of getting a six

WITH rolls AS (
    SELECT 
        CAST(1 + FLOOR(RANDOM() * 6) AS INT) AS dice_roll
    FROM generate_series(1, 10)
)
SELECT 
    AVG(CASE WHEN dice_roll = 6 THEN 1 ELSE 0 END) AS average_of_six
FROM rolls;

  -- c) Generate 100 rows of dice rolls and calculate average of getting a six

WITH rolls AS (
    SELECT 
        CAST(1 + FLOOR(RANDOM() * 6) AS INT) AS dice_roll
    FROM generate_series(1, 100)
)
SELECT 
    AVG(CASE WHEN dice_roll = 6 THEN 1 ELSE 0 END) AS average_of_six
FROM rolls;


-- d) Repeat the experiment with 1000, 10000, 100000, 1000000 rolls.

-- e) What is the theoretical mean?