--fixar mellanrum
SELECT
	REGEXP_REPLACE(TRIM(description), ' +', ' ', 'g') AS cleaned_description
FROM
	staging.sql_glossary;


--matchar på ett ungefär med %%
SELECT
	*
FROM
	staging.sql_glossary
WHERE
	LOWER(description) LIKE '%select%'; --LOWER tillåter andra cases än små