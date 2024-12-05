--sql's motsvarande if-sats

SELECT * FROM main.data_jobs;

SELECT job_title, COUNT(*) FROM data_jobs GROUP BY job_title;



-- EN --> Entry level
-- MI --> Mid level
-- SE --> Senior
-- EX --> Expert

--INGEST DATA --> TRANSFORMING DATA

SELECT --SELECT clause specifies that the query will retrieve a new column, determined by the CASE statement.
	CASE --  CASE statement is used to apply conditional logic
		WHEN experience_level = 'SE' THEN 'Senior' -- WHEN experience_level has the value 'SE', THEN if true the return is 'Senior'
		WHEN experience_level  = 'MI' THEN 'Mid lvl'
		WHEN experience_level  = 'EN' THEN 'Entry level'
		WHEN experience_level  = 'EX' THEN 'Expert'
	END AS experience_level, --AS skriver om titeln
	* EXCLUDE (experience_level)-- * shows all instead OF just experience_level, EXCLUDE EN, MI etc experience_level list 
FROM
	main.data_jobs;
-- To handle other cases explicitly, you can add an ELSE clause

SELECT 
	CASE
		WHEN employment_type = 'FT' THEN 'Full-time'
	END AS employment_type,
	* EXCLUDE (employment_type)
FROM
	main.data_jobs;


-- have I transformed my data?
SELECT * FROM main.data_jobs;

-- To presist changes in the table ---> update it
UPDATE 
	main.data_jobs 
SET --Väjer vilken kolumn som ska uppdateras
	experience_level = CASE --vi tilldelar experience_case med CASE nedan 
		WHEN experience_level = 'SE' THEN 'Senior' 
		WHEN experience_level  = 'MI' THEN 'Mid lvl'
		WHEN experience_level  = 'EN' THEN 'Entry level'
		WHEN experience_level  = 'EX' THEN 'Expert'
	END;

-------
--Ser uppdaterad version från EN, EX ect till Entry lvl, Senior etc 
SELECT DISTINCT experience_level FROM main.data_jobs; 



