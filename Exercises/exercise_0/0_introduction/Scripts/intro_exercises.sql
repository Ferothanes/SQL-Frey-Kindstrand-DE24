CREATE TABLE sql_course (
    content TEXT,
    week INTEGER,
    content_type TEXT
);

INSERT INTO sql_course (content, week, content_type) VALUES
    ('00_intro', 46, 'lecture'),
    ('01_course_structure', 46, 'lecture'),
    ('02_setup_duckdb', 46, 'lecture'),
    ('exercise_0', 46, 'exercise'),
    ('exercise_1', 47, 'exercise'),
    ('03_advanced_queries', 47, 'lecture'),
    ('exercise_2', 48, 'exercise'),
    ('04_optimization', 48, 'lecture'),
    ('tenta', 51, 'exam');

SELECT * FROM main.sql_course; 

SELECT COUNT(*) AS total_rows FROM sql_course;

SELECT * 
FROM sql_course 
WHERE week = 48;

DESCRIBE sql_course;
--DROP TABLE IF EXISTS sql_course;


-- a) Select all the exercises in this course
SELECT * FROM main.sql_course WHERE content_type = 'exercise';
-- b)Select all the lectures in this course
SELECT * FROM main.sql_course WHERE content_type = 'lecture';
-- c) Select all records for week 48
SELECT * FROM main.sql_course WHERE week = 48;
-- d) Select all records for week 47-49
SELECT * FROM main.sql_course WHERE week BETWEEN 47 AND 49;
-- e) How many lectures are in the table?
SELECT COUNT(*) AS antal_lektioner FROM main.sql_course WHERE content_type = 'lecture';
-- f) How many other content are there?
SELECT COUNT(*) FROM main.sql_course WHERE content_type != 'lecture';
-- g) Which are the unique content types in this table?
SELECT DISTINCT content_type FROM sql_course;
-- h) Delete the row with content 02_setup_duckdb and add it again.
DELETE FROM sql_course WHERE content = '02_setup_duckdb';
INSERT INTO sql_course (content, week, content_type) VALUES ('02_setup_duckdb', 46, 'lecture');
-- Now make a query where you sort the weeks in ascending order.
SELECT * FROM sql_course 
WHERE content_type IN ('exercise', 'lecture') AND week >= 47 
ORDER BY week ASC;

INSERT INTO main.sql_course (content, week, content_type) VALUES ('freys classroom', 47, 'studyroom');
DELETE FROM main.sql_course WHERE content 'freys classroom';





















