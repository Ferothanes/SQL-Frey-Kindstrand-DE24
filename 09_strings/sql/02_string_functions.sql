SELECT * FROM staging.sql_glossary;

SELECT
	'SQL word' AS type, -- Adds the string 'SQL word' as a constant value in every row of the result. It will appear in a column named 'type'.
	sql_word, --Selects the column named sql_word from the table or query. This likely contains text data.
	sql_word[:2],  -- Extracts the first two characters of the string in the sql_word column. 
	sql_word[2:5], -- Extracts characters from position 3 to 5 (inclusive of position 3 and exclusive of 5). 
	sql_word[-1] -- Extracts the last character of the string in sql_word. 
FROM
	staging.sql_glossary; --use in staging, not in main.
	
SELECT 'hej' || ' ' ||UPPER('de24') AS lets_concatinate; -- concatinera/lägger ihop hej de24
SELECT UPPER(SUBSTR('hej', 1, 1)) || 'ej' ||UPPER('de24') AS lets_concatinate; -- upper(substr) -- stor OCH liten bokstav

--nested functions/nestling
SELECT
	sql_word,
	UPPER(TRIM(sql_word)) AS updated_words
FROM
	staging.sql_glossary;

--------------
SELECT
	REPLACE(TRIM(description), ' ', ''),
	REPLACE(TRIM(description), ' ', ' ')
FROM
	staging.sql_glossary;
