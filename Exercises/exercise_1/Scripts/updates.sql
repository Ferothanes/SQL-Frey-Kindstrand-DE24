SELECT * FROM data_transform;
--a) Transform employment type
UPDATE 
	main.data_transform
SET 
	employment_type = CASE
		WHEN employment_type = 'FT' THEN 'Full-time'
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part-time'
	END;

--b) Do similar for company size, but you have to figure out what the abbreviations could stand for.
UPDATE
	main.data_transform
SET 
	company_size = CASE
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'L' THEN 'Large'
END;

-- d) Make a salary column with Swedish currency for monthly salary
--adds new column salary_in_sek
ALTER TABLE main.data_transform
ADD COLUMN salary_in_sek NUMERIC; -- adds int column

--adds data from salary_in_usd to new column
UPDATE main.data_transform
SET salary_in_sek = salary_in_usd * 10.5;

----------------------------------
--removes a new column in existing table
ALTER TABLE main.data_transform
DROP COLUMN salary_in_sek;
--------------------------
 --e) Make a salary_level column with the following categories: 
 --low, medium, high, insanely_high. Decide your thresholds for each category. Make it base on the monthly salary in SEK.
ALTER TABLE main.data_transform
ADD salary_level VARCHAR(20); --adds STRING column

UPDATE main.data_transform
SET salary_level = CASE 
    WHEN salary_in_sek < 600000 THEN 'Low'
    WHEN salary_in_sek < 1000000 THEN 'Medium'
    WHEN salary_in_sek < 1600000 THEN 'High'
    WHEN salary_in_sek > 1600000 THEN 'Insanely_high'
    END;
    
 --  f) Choose the following columns to include in your table: 
SELECT * FROM data_transform;

SELECT
	experience_level,
	employment_type,
	job_title,
	remote_ratio,
	company_size,
	salary_level,
	annual_salary_sek,
	salary_monthly_sek
FROM
	data_transform;

--adds new column salary_in_sek
ALTER TABLE main.data_transform
ADD COLUMN salary_monthly_sek NUMERIC;

--adds data from salary_in_usd to new column
UPDATE main.data_transform
SET salary_monthly_sek = annual_salary_sek / 12;


 
-- g) change experience_level 
UPDATE main.data_transform
	SET experience_level = CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level  = 'MI' THEN 'Mid lvl'
		WHEN experience_level  = 'EN' THEN 'Entry level'
		WHEN experience_level  = 'EX' THEN 'Expert'
	END;

--e) change 0 = remote, 100 = Onsite else = Hybrid
UPDATE main.data_transform
	SET remote_ratio = CASE
	    WHEN remote_ratio = 0 THEN 'Onsite'
	    WHEN remote_ratio = 100 THEN 'Remote'
	    ELSE 'Hybrid'
END;

 
 
 
 