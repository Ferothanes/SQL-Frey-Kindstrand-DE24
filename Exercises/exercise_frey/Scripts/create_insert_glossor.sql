SELECT * FROM information_schema.schemata;
-------------------------------------------------CREATES TABLES
CREATE TABLE IF NOT EXISTS main.learn_clauses (
Moment INT PRIMARY KEY,
Clause TEXT,
Explenation TEXT,
Learned BOOLEAN);

SELECT * FROM learn_clauses;

CREATE TABLE IF NOT EXISTS main.learn_abbreviations (
Moment INT PRIMARY KEY, 
Abbreviation TEXT, 
Catergory TEXT, 
Description TEXT,
Learned BOOLEAN);

SELECT * FROM learn_abbreviations;

CREATE  TABLE IF NOT EXISTS main.learn_sql
(Moment INT PRIMARY KEY, 
Terminology TEXT,
Explanation TEXT,
Learned BOOLEAN);

SELECT * FROM main.learn_sql;

--------------------------------------------------INSERT VALUES

INSERT INTO learn_clauses
VALUES 
(1, 'SELECT','Choose columns to retrieve.',TRUE),
(2,'FROM', 'Identify tables to retrieve data from.',TRUE),
(3,'WHERE','Filter rows based on a condition.',FALSE);

INSERT INTO main.learn_abbreviations 
VALUES
(1, 'CRUD', 'Operations on Data', 'Create, Read, Update, Delete - basic operations for interacting with databases.', TRUE),
(2, 'DDL', 'Data Definition Language', 'Defines the structure of the database (e.g., tables, schemas, CREATE, ALTER).', TRUE),
(3, 'DML', 'Data Manipulation Language', 'Manipulates data within tables (e.g., insert, update, delete).', TRUE),
(4, 'DQL','Data Query Language', 'Focused on retrieving data (e.g., SELECT).', TRUE);

INSERT INTO main.learn_sql
VALUES
(1, 'Persistence', 'Data som förblir lagrad även efter att applikationen eller systemet stängs.', TRUE),
(2, 'Relational Database', 'A type of database that organizes data into tables with defined relationships.', FALSE),
(3, 'Type Inference', 'Automatically determining the data type of a value or expression.', FALSE),
(4, 'Aliasing', 'Renaming a table or column for easier reference in SQL queries (e.g., AS).', TRUE),
(5, '.wal', 'Write-Ahead Logging-fil som används för databasåterställning och transaktionsloggning.', FALSE),
(6, 'Dot Commands', 'Specialkommandon i SQL-gränssnitt, vanligtvis med ett punktprefix (t.ex., .help).', FALSE),
(7, 'Namespace', 'En logisk gruppering av namn för att undvika namngivningskonflikter.', FALSE),
(8, 'Aggregate Functions', 'Funktioner som utför beräkningar på flera rader data för att returnera ett enda värde (t.ex., COUNT, AVG).', TRUE),
(9, 'Range Filtering', 'Förfining av frågeresultat för att inkludera endast data inom ett specifikt intervall, ofta med BETWEEN eller jämförelseoperatorer.', FALSE),
(10, 'Pattern Matching', 'Sökning efter ett specificerat mönster i en kolumn, ofta med LIKE-operatorn.', FALSE),
(11, 'List Filtering', 'Filtrering av frågeresultat för att inkludera värden som matchar en specificerad lista (med IN).', FALSE);

-----------------------------------------------------
SELECT * FROM learn_clauses;
SELECT * FROM learn_abbreviations;
SELECT * FROM learn_sql;
-----------------------------------------------------JOIN LISTS 

SELECT
	*
FROM
	main.learn_abbreviations la
LEFT JOIN main.learn_clauses lc 
ON
la.Moment = lc.Moment;


SELECT Terminology, Moment FROM main.learn_sql ls WHERE Moment IN(1,3,4);
SELECT Terminology, Moment FROM main.learn_sql ls WHERE Moment BETWEEN 1 AND 3;

SELECT Moment FROM learn_clauses
UNION
SELECT Moment FROM learn_sql;

SELECT Moment FROM main.learn_sql ls 
EXCEPT
SELECT Moment FROM main.learn_clauses lc ;
j

SELECT
	*
FROM
	main.learn_clauses lc 
LEFT JOIN main.learn_sql ls ON
lc.Moment = ls.Moment;

SELECT Moment /2 FROM main.learn_sql ls ;

