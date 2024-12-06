# Glossary of SQL and Related Terms

| **Termiology**       | **Explanation**                                           |
|----------------------|-----------------------------------------------------------|
| CRUD                 | Create, Read, Update, Delete - basic operations for interacting with databases. |
| Query                | A request to retrieve or manipulate data in a database. |
| Statement            | A complete instruction in SQL to perform an operation on the database. |
| DDL                  | Data Definition Language - commands for defining database structures (e.g., `CREATE`, `ALTER`). |
| DML                  | Data Manipulation Language - commands for modifying data (e.g., `INSERT`, `UPDATE`). |
| Idempotent           | An operation that produces the same result even if executed multiple times. |
| Table                | A structured set of data organized in rows and columns in a database. |
| Schema               | The structure or design of a database, including its tables, columns, and relationships. |
| Row                  | A single horizontal entry in a table, representing a data record. |
| Record               | Synonym for row; a single instance of data in a table. |
| Column               | A vertical field in a table that defines a data attribute. |
| Database             | A structured collection of data stored electronically. |
| Persistence          | Data that remains stored even after the application or system is closed. |
| DQL                  | Data Query Language - SQL commands focused on querying data (e.g., `SELECT`). |
| Relational Database  | A type of database that organizes data into tables with defined relationships. |
| Dot Commands         | Special commands in SQL interfaces, typically prefixed with a dot (e.g., `.help`). |
| CLI                  | Command-Line Interface - a text-based interface for interacting with systems. |
| Bash                 | A Unix shell used for scripting and running commands in the terminal. |
| Type Inference       | Automatically determining the data type of a value or expression. |
| Clause               | A part of an SQL statement defining specific actions (e.g., `WHERE`, `ORDER BY`). |
| Aliasing             | Renaming a table or column for easier reference in SQL queries (e.g., `AS`). |
| SQL Statement        | A complete SQL command to perform a database operation. |
| Persistent Database  | A database that stores data permanently on disk, as opposed to in memory. |
| .wal                 | Write-Ahead Logging file used for database recovery and transaction logging. |
| IDE                  | Integrated Development Environment - software for coding and managing projects. |
| CSV                  | Comma-Separated Values - a file format for tabular data. |
| Namespace            | A logical grouping of names to avoid naming conflicts. |
| SELECT clause        | Specifies the columns that should be included in the result of a query. |
| WHERE clause         | Filters the rows returned by a query based on a specified condition. |
| Condition            | An expression used to evaluate if a row in a query should be included in the result. |
| BETWEEN              | Filters results by checking if a value is within a specific range (inclusive). |
| Aggregate Functions  | Functions that perform calculations on multiple rows of data to return a single value (e.g., `COUNT`, `AVG`). |
| Range Filtering      | Refining query results to include only data within a specific range, often using `BETWEEN` or comparison operators. |
| Pattern Matching     | Searching for a specified pattern in a column, often using the `LIKE` operator. |
| List Filtering       | Filtering query results to include values that match a specified list (using `IN`). |
|--------------------|---------------------------------------------------------------------------------|
| **Temporal**       | Deals with time-based data like dates and times.                               |
| **Interval**       | A span of time, like "5 days" or "2 hours."                                    |
| **Synthetic**      | Fake or simulated data created for testing.                                    |
| **VALUES**         | Used to provide fixed values in SQL, like adding rows manually.                |
| **Subquery**       | A query inside another query.                                                  |
| **Compound Query** | Combines results from two or more queries.                                     |
| **Set Operations** | Ways to combine or compare data from multiple queries.                         |
| **EXCEPT**         | Shows data in the first query that isn’t in the second.                        |
| **Result Set**     | The table or list of results you get from a query.                             |
| **UNION**          | Combines results from two queries and removes duplicates.                      |
| **UNION ALL**      | Combines results from two queries and keeps all rows, even duplicates.         |
| **Operator**       | Symbols or words that perform calculations or comparisons, like `+` or `=`.    |
| **INTERSECT**      | Shows data that is common between two queries.                                 |
| **Venn Diagram**   | A diagram showing how sets overlap or differ.                                  |
| **LEFT JOIN**      | Returns all rows from the first table and matches from the second.             |
| **INNER JOIN**     | Returns only rows that match in both tables.                                   |
| **RIGHT JOIN**     | Returns all rows from the second table and matches from the first.             |
| **LIKE**           | Used to find text that matches a pattern, like "starts with A."                |
