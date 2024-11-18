--Plockar in data från databasen databas/schema data_jobs - table skapas i VS Code.

CREATE TABLE
    IF NOT EXISTS data_jobs AS (
        SELECT 
        *
        FROM    
            read_csv_auto ('data/salaries.csv')
    );


 --  duckdb data/salaries.duckdb <sql/ingest_salaries.sql