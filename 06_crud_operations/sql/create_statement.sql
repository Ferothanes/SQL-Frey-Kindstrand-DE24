-- Creates a schema named 'my_database' if it doesn't already exist.
CREATE SCHEMA IF NOT EXISTS my_database;

SELECT schema_name FROM information_schema.schemata;


-- Lists all schemas in DuckDB (DuckDB doesn’t use `information_schema.schemata` but supports `.schema` as a dot command).
-- Alternatively, list schemas manually if available.
-- SELECT statement to verify schemas doesn't work the same way.

-- Creates a sequence named 'id_duckdb_sequence' starting at 1, if it doesn't already exist.
CREATE SEQUENCE IF NOT EXISTS id_duckdb_sequence START 1;

SELECT * FROM pg_catalog.pg_sequences;

-- Creates a table named 'duckdb' in the schema 'my_database' with a default ID.
CREATE TABLE IF NOT EXISTS my_database.duckdb (
    id INTEGER DEFAULT nextval('id_duckdb_sequence'), -- Uses the sequence for ID
    word STRING,                                      -- Stores a word
    description STRING                                -- Stores a description
);


---------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS my_database.sql (
	word STRING,
	description STRING);

CREATE SCHEMA IF NOT EXISTS programming;

CREATE TABLE IF NOT EXISTS programming.python (
	word STRING,
	description STRING);

CREATE TABLE IF NOT EXISTS programming.c_sharp (
	word STRING,
	description STRING);
