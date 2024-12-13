# SQL-Frey-Kindstrand-DE24

### Notes:

## Common git commands:

Below is a list of common Git commands and their descriptions:

| **Command**       | **What it does**                                                |
|-------------------|-----------------------------------------------------------------|
| `git init`        | Initializes a new Git repository in the current directory.      |
| `git clone <url>` | Clones an existing repository from a remote URL.                |
| `git status`      | Shows the current status of the working directory and staging area. |
| `git add <file>`  | Stages changes to be committed (use `.` to stage all changes).  |
| `git commit -m "<message>"` | Commits staged changes with a descriptive message.   |
| `git push`        | Pushes committed changes to a remote repository.               |
| `git pull`        | Fetches and integrates changes from a remote repository.       |
| `git branch`      | Lists all branches in the repository.                          |
| `git checkout <branch>` | Switches to a specified branch.                          |
| `mkdir <directory>` | Creates a new directory (useful for organizing files).       |
| `git log`         | Displays the commit history.                                   |
| `git diff`        | Shows the differences between changes in the working directory or staging area. |
| `git merge <branch>` | Merges a specified branch into the current branch.          |
| `git remote -v`   | Lists the remote repositories connected to your local repo.    |
| `git reset <file>` | Unstages a file from the staging area.                        |
| `git rm <file>`   | Removes a file from the repository and working directory.      |
| `git stash`       | Temporarily stores uncommitted changes.                       |
| `git tag <name>`  | Tags a specific commit with a name for easy reference.         |


## Common SQL Clauses
### Keywords within SQL statements that define how data is queried or manipulated.

| **Clause**     | **What it does**                                  |
|----------------|---------------------------------------------------|
| `SELECT`       | Choose columns to retrieve.                       |
| `FROM`         | Identify tables to retrieve data from.            |
| `WHERE`        | Filter rows based on a condition.                 |
| `GROUP BY`     | Groups rows based on a common value.              |
| `HAVING`       | Filter groups after aggregation.                  |
| `ORDER BY`     | Sort rows by column(s) in ascending or descending order. |
| `DESC`         | Descending (highest to lowest, Z to A).           |
| `ASC`          | Ascending (lowest to highest, A to Z).            |
| `LIMIT`        | get top results (e.g., top 5 highest scores).     |

### SCHEMA
A schema in the context of databases is a way to organize and structure the data. It defines how data is stored in the database, including: 
- Tables: The collection of rows and columns that store data.
- Columns: The individual attributes or fields in a table (e.g., name, age, date).
- Relationships: How tables relate to each other (e.g., foreign keys linking tables).
- Constraints: Rules that enforce data integrity (e.g., primary keys, unique constraints).

### DESC & Why Use DESC?
DESC (DESCRIBE) is used to display the columns, data types, and other metadata of a table. INT, DESCIMAL, VARCHAR(), BOOLEANS, FLOAT(12,5), DATETIME ect
- To understand the structure of the table you're working with.
- To see the data types and constraints before writing queries.
- To identify primary keys, foreign keys, and nullable columns.

### AGGREGERING
Aggregering innebär att kombinera eller sammanfatta flera rader av data till ett enda värde. Detta görs ofta för att få en översikt eller sammanfattning av stora mängder data. 
Vanliga Aggregeringsoperationer i SQL:
- SUM(): Summerar värden i en kolumn. - Exempel: Beräkna den totala försäljningen. 
- AVG(): Beräknar medelvärdet av värden i en kolumn. - Exempel: Beräkna genomsnittlig lönenivå för anställda.
- COUNT(): Räknar antalet rader eller poster i en grupp. - Exempel: Räknar antalet anställda i ett - företag. 
- MIN(): Hittar det minsta värdet i en kolumn. - Exempel: Hitta den lägsta temperaturen i en dataset. 
- MAX(): Hittar det största värdet i en kolumn. - Exempel: Hitta den högsta försäljningen under en viss period.

### REGEX (regular expressions) 
Powerful tool used for searching, matching, and manipulating text.
Practical Examples of Regex:

- Matching an Email Address:
    ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$
    This pattern matches a basic email format (e.g., username@example.com).
- Matching a Phone Number:
    ^\d{3}-\d{3}-\d{4}$
    This matches phone numbers in the format 123-456-7890.


## 	Common META commands 
### Used to interact with the database interface or environment (e.g., DuckDB CLI).

| **Meta Command** | **Description**                                            |
|------------------|------------------------------------------------------------|
| `.open`          | Opens a DuckDB database file.                              |
| `.read`          | Executes SQL commands from a specified file.               |
| `.schema`        | Shows the schema of tables in the database.                |
| `.tables`        | Lists all tables in the connected database.                |
| `.quit`          | Exits the DuckDB CLI.                                      |
| `.help`          | Lists all available meta commands.                         |



### An overview of SQL operations for data management, structure definition, and access control.
| **SQL-Abbreviation** | **Category**                | **Description**                                                                 |
|-------------------|-----------------------------|---------------------------------------------------------------------------------|
| **CRUD**          | Operations on Data         | Create, Read, Update, Delete - basic operations for interacting with databases. |
| **DDL**           | Data Definition Language   | Defines the structure of the database (e.g., tables, schemas, CREATE, ALTER).                  |
| **DML**           | Data Manipulation Language | Manipulates data within tables (e.g., insert, update, delete).                  |
| **DQL**           | Data Query Language        | Focused on retrieving data (e.g., `SELECT`).                                    |
| **IDE**           | Intergrated Development Enviroment  | Program that can code, debug, test, and manage code efficiently by integrating essential programming tools, such as a code editor, compiler or interpreter, debugger etc into a unified interface.              |
| **DCL**           | Data Control Language      | Manages permissions and access control (e.g., `GRANT`, `REVOKE`).              |
| **TCL**           | Transaction Control Language | Handles transactions (e.g., `COMMIT`, `ROLLBACK`).                              |
| **CSV**           | Comma-Separated Values | a file format for tabular data.                   |
| **CLI**           | Command-Line Interface | a text-based interface for interacting with systems.   |
|**E.D.A**          | Exploratory Data Analysis | Refers to the process of analyzing datasets to summarize their main characteristics, often using statistical and visualization techniques. The goal is to understand the structure, relationships, and patterns in the data.  |


