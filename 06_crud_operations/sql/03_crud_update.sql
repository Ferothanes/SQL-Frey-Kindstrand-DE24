-- DDL

--ALTER TABLE my_database.duckdb
--ADD COLUMN learnt BOOLEAN DEFAULT FALSE;


--update --CHECKA learnt - det jag lärt mig om jag lämnar * kommer alla checka kolumner 

SELECT
	word, learnt 
FROM
	my_database.duckdb
WHERE
	id IN (1, 9, 11);
	
UPDATE my_database.duckdb SET learnt = TRUE WHERE id IN (9, 1, 11);

SELECT * FROM my_database.duckdb; --SE ATT dessa siffror är avcheckade med v