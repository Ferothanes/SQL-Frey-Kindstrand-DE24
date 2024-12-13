DESC;
SELECT * FROM sql.exercises;
SELECT * FROM sql.lectures;

INSERT INTO
    sql.lectures
VALUES
    (
        1,
        'intro, query, ingest csv, CLI, dbeaver, table, select',
        '00-04',
        TRUE
    ),
    (
        2,
        'filtering, CRUD, conditionals, sorting, functions, grouping',
        '05-08',
        TRUE
    ),
    (
        3,
        'grouping, strings, regexp, set operations, performing joins, querying multiple tables',
        '09-11',
        FALSE
    ),
    (
        4,
        'window functions, CTEs, connect duckdb to Python, data security, SQL injection',
        '12-14',
        FALSE
    ),
    (
        5,
        'duckdb tips and tricks, repetition',
        '15-16',
        TRUE
    ),
    (6, 'exam', '17', FALSE);
   
----------------------------------------------------
   INSERT INTO
    sql.exercises
VALUES
    (1, '0', TRUE),
    (2, '1', TRUE),
    (3, '2', TRUE),
    (4, '3', TRUE),
    (5, 'old exam', TRUE);
   

