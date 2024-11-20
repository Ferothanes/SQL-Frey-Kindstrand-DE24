## Exploring hemnet data - Go to [kaggle](https://www.kaggle.com/datasets/florianlandras/stockholm-house-market-prices) to download hemnet data from kaggle. Place the csv file into your local repository.

 - view github course exercise for more info <3

## Theory questions 

a) What is SQL, and why is it important in relational databases?

    Svar: SQL (Structured Query Language) används för att hantera och fråga relationsdatabaser. Det är viktigt eftersom det organiserar data i tabeller och gör det möjligt att effektivt skapa, läsa, uppdatera och ta bort data.

b) Explain the difference between HAVING and WHERE clauses.

    Svar:
    WHERE filtrerar rader innan gruppbildning och aggregering.
    HAVING filtrerar grupper efter att de har aggregerats.

c) Explain the purpose of the LIMIT or TOP clause in a SQL query.

    Svar: LIMIT (eller TOP) begränsar antalet rader som returneras av en fråga. Används för att hämta ett litet urval från stora datamängder.

d) What are the primary functions of the Data Definition Language (DDL) in SQL?

    Svar: DDL används för att definiera och ändra databasens struktur, exempelvis genom kommandon som CREATE, ALTER och DROP för tabeller och index.

e) Explain the differences between the Data Manipulation Language (DML) and Data Definition Language (DDL).

    Svar:
    DML: Används för att hantera data (t.ex. INSERT, UPDATE, DELETE).
    DDL: Används för att hantera databasens struktur (t.ex. CREATE, DROP).

f) What type of dot commands are there in DuckDB?

    Svar: Dot-kommandon är speciella kommandon i DuckDB som utför olika funktioner, som .help (visa kommandon), .tables (visa tabeller) och .schema (visa schema).

g) What makes DuckDB unique compared to other databases?

    Svar: DuckDB är optimerat för analytiska frågor på lokala filer och fungerar direkt med format som CSV och Parquet utan att behöva en server.

h) Is DuckDB suitable for real-time data processing?

    Svar: Nej, DuckDB är designat för analytiska arbetsbelastningar och är inte optimerat för realtids bearbetning av transaktioner.

i) Difference between read_csv and read_csv_auto?

    Svar:
    read_csv: Kräver att du manuellt specificerar filens parametrar (t.ex. avgränsare, header).
    read_csv_auto: Detekterar automatiskt filens parametrar, vilket gör det enklare att importera enkla CSV-filer.

j) What is the purpose and advantages of using an IDE such as DBeaver?

    Svar: En IDE som DBeaver gör det lättare att hantera databaser genom att erbjuda en användarvänlig gränssnitt för att köra frågor, visa data och hantera databasens struktur.


# Glossary of SQL and Related Terms

  | **Terminology**        | **Explanation**                                                                 |
|-------------------------|---------------------------------------------------------------------------------|
| CRUD                   | Create, Read, Update, Delete - basic operations for interacting with databases.  |
| Query                  | A request to retrieve or manipulate data in a database.                         |
| Statement              | A complete instruction in SQL to perform an operation on the database.          |
| DDL                   | Data Definition Language - commands for defining database structures (e.g., `CREATE`, `ALTER`). |
| DML                   | Data Manipulation Language - commands for modifying data (e.g., `INSERT`, `UPDATE`). |
| Idempotent            | An operation that produces the same result even if executed multiple times.      |
| Table                 | A structured set of data organized in rows and columns in a database.            |
| Schema                | The structure or design of a database, including its tables, columns, and relationships. |
| Row                   | A single horizontal entry in a table, representing a data record.                |
| Record                | Synonym for row; a single instance of data in a table.                           |
| Column                | A vertical field in a table that defines a data attribute.                       |
| Database              | A structured collection of data stored electronically.                          |
| Persistence           | Data that remains stored even after the application or system is closed.         |
| DQL                   | Data Query Language - SQL commands focused on querying data (e.g., `SELECT`).    |
| Relational Database   | A type of database that organizes data into tables with defined relationships.   |
| Dot Commands          | Special commands in SQL interfaces, typically prefixed with a dot (e.g., `.help`).|
| CLI                   | Command-Line Interface - a text-based interface for interacting with systems.    |
| Bash                  | A Unix shell used for scripting and running commands in the terminal.            |
| Type Inference        | Automatically determining the data type of a value or expression.                |
| Clause                | A part of an SQL statement defining specific actions (e.g., `WHERE`, `ORDER BY`).|
| Aliasing              | Renaming a table or column for easier reference in SQL queries (e.g., `AS`).     |
| SQL Statement         | A complete SQL command to perform a database operation.                          |
| Persistent Database   | A database that stores data permanently on disk, as opposed to in memory.        |
| .wal                  | Write-Ahead Logging file used for database recovery and transaction logging.     |
| IDE                   | Integrated Development Environment - software for coding and managing projects.  |
| CSV                   | Comma-Separated Values - a file format for tabular data.                         |
| Namespace             | A logical grouping of names to avoid naming conflicts. 