--database salaries.
DESC;
SELECT * FROM data_jobs;

--What are the column names in the dataset?
--Hint: Use DESCRIBE or SHOW COLUMNS to list column names and types.
DESCRIBE data_jobs;

--How many rows are in the dataset?
--Hint: Use COUNT(*) on the table to find the number of rows.
SELECT COUNT(*) FROM data_jobs;

--What is the range of values in a specific numeric column?
--Hint: Use MIN() and MAX() functions on the numeric column.
SELECT MIN(salary) AS Mimimum_salary FROM data_jobs;

--How many unique values exist in a categorical column?
--Hint: Use COUNT(DISTINCT column_name) to find the count of unique values.
SELECT DISTINCT job_title FROM data_jobs;
SELECT COUNT(DISTINCT job_title) FROM data_jobs;

--What is the average value of a numeric column?
--Hint: Use the AVG() function on the numeric column.
SELECT ROUND(AVG(salary), 2) AS Average_salary FROM data_jobs;

--How many rows satisfy a specific condition (e.g., a column value greater than X)?
--Hint: Use a WHERE clause with COUNT(*) to filter rows by the condition.

SELECT COUNT(salary) FROM data_jobs WHERE salary > 200000; 

--What is the distribution of values in a categorical column?
--Hint: Use GROUP BY column_name with COUNT(*) to get the frequency of each value.
SELECT
	job_title,
	COUNT(*) AS amount_jobs
FROM
	data_jobs
GROUP BY
	job_title;
ORDER BY 
	amount_jobs ASC;

--What is the correlation between two numeric columns?
--Hint: Use the CORR(column1, column2) function to compute correlation.
SELECT * FROM data_jobs;
SELECT CORR(salary, work_year) FROM data_jobs;

--Which column(s) have missing values, and how many are missing?
--Hint: Use SUM(column IS NULL) for each column to count missing values.
SELECT 
    salary,
    COUNT(*) AS total_rows,
    SUM(CASE WHEN salary IS NULL THEN 1 ELSE 0 END) AS missing_values
FROM data_jobs;
