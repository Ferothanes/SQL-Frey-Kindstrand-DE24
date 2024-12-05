--CRUD, CREATE (& INSERT), READ, UPDATE, DELETE
CREATE TABLE Users (
id INT,
name VARCHAR(50),
phonenumber INT, 
stad VARCHAR(50)
);

SELECT * FROM Users;

--Tog bort kolumn number
ALTER TABLE Users DROP COLUMN number;
--La till kolumn email
ALTER TABLE Users ADD email VARCHAR(20);

--add data to table rows 
INSERT INTO Users(name, email) VALUES('Peter Davis','P.Davis@hotmail.com');

INSERT
	INTO
	Users_unique(id,
	name,
	stad,
	email)
VALUES (
'4',
'Naina',
'Obsola',
'Nai@Abo.hotmail.com'
);

--Update missing values
UPDATE Users
SET email = 'Olga.C@hotmail.com'
WHERE name LIKE '%Olga%' AND email IS NULL; --%% ignores typos, so instead OF writing the whole name i just wrote Olga 

--Updating multiple at once
UPDATE Users
SET stad = CASE 
	WHEN name = 'Peter Davis' THEN 'New York'
	WHEN name = 'Olga Cambell' THEN 'London'
END 
WHERE name IN ('Olga Cambell', 'Peter Davis');

--remove duplicate, doesnt work simply with duckdb

CREATE TABLE Users_unique AS
SELECT DISTINCT * FROM Users; --creates a NEW TABLE but ONLY takes the UNIQUE/DISTINCT information. 

SELECT * FROM Users_unique;

SELECT id, name, stad FROM Users_unique WHERE id > 2;

 SELECT id, COUNT(*) FROM Users GROUP BY id;







