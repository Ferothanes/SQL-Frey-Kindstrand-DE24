--Continue working on the data from lecture 09_strings. 
--In this lecture you created a schema called staging and ingested the raw data into the staging schema.

 --a) Create a schema called refined. This is the schema where you'll put the transformed data.
CREATE SCHEMA IF NOT EXISTS staging;

CREATE TABLE IF NOT EXISTS staging.malformed_text AS (
SELECT
	*
FROM
	read_csv_auto('/Users/Freja/Desktop/SQL-Frey-Kindstrand-DE24/Exercises/exercise_2/data/sql_terms.csv')
);

SELECT * FROM staging.malformed_text;

 --b) Now transform and clean the data and place the cleaned table inside the refined schema.

CREATE SCHEMA IF NOT EXISTS refined;
CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
SELECT
	UPPER(trim(sql_word)) AS sql_word,
	regexp_replace(trim(description),' +', ' ', 'g') AS description ,
	regexp_replace(trim(example),' +', ' ', 'g') AS example 
FROM
	staging.sql_glossary sg 
);

SELECT * FROM refined.sql_glossary;

 --c) Practice filtering and searching for different keywords in different columns. 
--removing duplicates
--handling missing or NULL values
--replacing missing values with default
--removing rows with missing values if not important
--correcting inconistent data, different spelling or date formats
--ensuring the data is in corrct format, exp numbers = numeric 

