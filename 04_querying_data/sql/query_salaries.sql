-- Retrieves all columns and rows from the data_jobs table.
SELECT * FROM data_jobs;

-- Accesses data_jobs in the main schema explicitly (useful if multiple schemas exist).
SELECT * FROM main.data_jobs;
-- Fully qualifies the table's name, assuming the database is salaries and the schema is main.
SELECT * FROM salaries.main.data_jobs;
-- Retrieves the first 12 rows from the data_jobs table.
SELECT * FROM main.data_jobs LIMIT 12;

--Selects only the work_year, salary_in_usd, and remote_ratio columns from the data_jobs table.
SELECT
	work_year,
	salary_in_usd,
	remote_ratio
FROM
	main.data_jobs;

-- Retrieves all columns except salary, employee_residence, and work_year.
SELECT 
	* EXCLUDE(salary, employee_residence, work_year)
FROM
	main.data_jobs;


