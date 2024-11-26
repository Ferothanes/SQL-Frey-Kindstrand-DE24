--skapa rensad data

CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
SELECT
	TRIM(UPPER(sql_word)) AS sql_word,
	REGEXP_REPLACE(TRIM(description), ' +', ' ', 'g') AS description,
	example
FROM
	staging.sql_glossary);
	
SELECT * FROM refined.sql_glossary;