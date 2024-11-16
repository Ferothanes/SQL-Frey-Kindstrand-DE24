CREATE TABLE
    IF NOT EXISTS data_jokes AS (
        SELECT 
        *
        FROM    
            read_csv_auto ('data/salaries.csv')
    )