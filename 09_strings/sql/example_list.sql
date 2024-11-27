	
SELECT * FROM refined.sql_glossary;
SELECT * FROM staging.sql_glossary;

-- use uppercase for SQL keywords
-- remove unnecarry whitespace
--indent or format JOINs and subqueries
-- Ensure proper capitalization for table and colum names 
---------------------------------------------------------------------

-- remove unnecarry whitespace
UPDATE refined.sql_glossary
SET example = REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    LOWER(example),
                                    'insert', 'INSERT'
                                ),
                                'drop', 'DROP'
                            ),
                            'create', 'CREATE'
                        ),
                        'select', 'SELECT'
                    ),
                    'from', 'FROM'
                ),
                'where', 'WHERE'
    		)
WHERE
    LOWER(example) LIKE '%insert%'
    OR LOWER(example) LIKE '%drop%'
    OR LOWER(example) LIKE '%create%'
    OR LOWER(example) LIKE '%select%'
    OR LOWER(example) LIKE '%from%'
    OR LOWER(example) LIKE '%where%';

UPDATE
	refined.sql_glossary
SET
	example = REPLACE(
		REPLACE(
			REPLACE(LOWER(example),
	'delete',
	'DELETE'),
	'update',
	'UPDATE'),
	'table',
	'TABLE')
WHERE
	LOWER(example) LIKE '%delete%'
	OR LOWER(example) LIKE '%update%'
	OR LOWER(example) LIKE '%table%';




   

   


  



