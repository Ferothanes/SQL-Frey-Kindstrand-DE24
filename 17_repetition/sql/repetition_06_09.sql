--Skulle potentiellt kunna skapa ett schema för alla kurser. i varje kursplan/schema finns det tabeller med info, kanske glossor 
CREATE SCHEMA IF NOT EXISTS sql;
SELECT * FROM information_schema.schemata;

--IDEMPOTENT--IF NOT EXISTS--kommer att hoppa över att göra något om kommandot görs fler gånger 
CREATE TABLE IF NOT EXISTS sql.exercises (
	study_week INT PRIMARY KEY, 
	exercise TEXT, 
	studied BOOLEAN
);

CREATE TABLE IF NOT EXISTS sql.lectures (
	study_week INT PRIMARY KEY, 
	content TEXT, 
	lecture TEXT,
	studied BOOLEAN
);

DESC;
SELECT * FROM sql.exercises;
SELECT * FROM sql.lectures;


SELECT * FROM sql.lectures WHERE study_week IN (4, 6);
SELECT * FROM sql.lectures WHERE studied = FALSE;

-----------------
UPDATE 
    sql.lectures
SET studied = FALSE WHERE study_week = 5;

-----------------
---matches strings case sensetive 
SELECT * FROM SQL.lectures WHERE content ILIKE '%STRing%';
-----------------

SELECT
	*
FROM
	SQL.lectures l
LEFT JOIN SQL.exercises e ON
	L.study_week = E.study_week ;

-----------------------------
SELECT
	L.study_week, L.content, L.lecture, E.exercise 
FROM
	SQL.lectures l
LEFT JOIN SQL.exercises e ON
L.study_week = E.study_week ;
------------------------------
SELECT
	*
FROM
	SQL.lectures l
RIGHT JOIN SQL.exercises e ON
	L.study_week = E.study_week ;
--------------------------------

SELECT
	*
FROM
	SQL.lectures l
INNER JOIN SQL.exercises e ON
	L.study_week = E.study_week ;
	
