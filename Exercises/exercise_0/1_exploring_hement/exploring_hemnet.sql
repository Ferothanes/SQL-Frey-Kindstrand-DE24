-- a) create table
CREATE TABLE 
    IF NOT EXISTS hemnet_data AS (
        SELECT 
        *
         FROM read_csv_auto('hemnet_data_clean.csv')
    );
   
-- // ingest data table -- duckdb hemnet.duckdb < ingest_hemnet.sql



-- b) make a wildcard selection to checkout the data
SELECT * FROM main.hemnet_data; 


-- testing percentage_difference
SELECT 6475000*0.07;
SELECT 6475000-6475000*0.07;
--använd SELECT för att undersöka 


-- c) Find out how many rows there are

SELECT
	COUNT(*) AS total_rows
FROM
	main.hemnet_data;

-- d) Describe the table that you have to ingested to see the columns and data types

DESC;
DESC TABLE hemnet_data;
 

-- e) find out the 5 most expensive homes

SELECT
	address,
	commune,
	rooms,
	final_price
FROM
	main.hemnet_data
ORDER BY
	final_price DESC
LIMIT 5;
--Lägger till adress och commun, ordnar priserna med ORDER BY final_price men kommer vara lägsta priset först, därför lägger vi till DESC, 
--sedan använder vi LIMIT för att visa top

-- f) find out the 5 cheapest homes 
SELECT
	address,
	commune,
	area,
	rooms,
	final_price
FROM
	main.hemnet_data
ORDER BY
	area 
LIMIT 5;

--explore rooms
SELECT rooms, area, final_price FROM main.hemnet_data
WHERE rooms <= 3; 

-- g) find out statistics on minimum, mean, median and maximum prices per price 

SELECT
	MIN(final_price) AS Minimum,
	MEDIAN(final_price) AS Median,
	MAX(final_price) AS Maximum,
	AVG(final_price) AS Average,
	MIN(area) AS Area_Minimum,
	MEDIAN(area) AS area_Median,
	MAX(area) AS area_Maximum,
	AVG(area) AS area_Average
FROM
	main.hemnet_data;


-- j) how many percentage of homes cost more than 10mil (delen/hela)*100

SELECT
	COUNT(*)/500*100 AS percent_over_10M
FROM
	main.hemnet_data
WHERE
	final_price > 10000000;





