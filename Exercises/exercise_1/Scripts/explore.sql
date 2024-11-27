SELECT * FROM main.data_transform;

-- a) Count number of Data engineers jobs. For simplicity just go for job_title Data Engineer.
SELECT job_title FROM main.data_transform
WHERE LOWER(job_title) = LOWER('Data engineer');
--OR
SELECT COUNT(*) AS antal_engineers FROM main.data_transform
WHERE LOWER(job_title) = LOWER('Data engineer');


-- b) Count number of unique job titles in total.
SELECT DISTINCT job_title
FROM main.data_transform;
--OR
SELECT COUNT(DISTINCT job_title) 
FROM main.data_transform;

-- c) Find out how many jobs that goes into each salary level.

