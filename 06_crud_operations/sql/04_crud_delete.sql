-- DML
SELECT * FROM my_database.duckdb WHERE id IN (4, 7);

SELECT * FROM my_database.duckdb WHERE word IN ('TIMESTAMPTZ', 'DROP SCHEMA');


DELETE
SELECT * FROM my_database.duckdb WHERE word IN ('TIMESTAMPTZ', 'DROP SCHEMA');

--TO VIEW RESULT
SELECT * FROM my_database.duckdb;

