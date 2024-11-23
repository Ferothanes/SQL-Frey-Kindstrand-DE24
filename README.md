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

| `SCHEMA`       | A schema in the context of databases is a way to organize and structure the data. It defines how data is stored in the database, including: 
- Tables: The collection of rows and columns that store data.
- Columns: The individual attributes or fields in a table (e.g., name, age, date).
- Relationships: How tables relate to each other (e.g., foreign keys linking tables).
- Constraints: Rules that enforce data integrity (e.g., primary keys, unique constraints).     |

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
| **CRUD**          | Operations on Data         | Stands for Create, Read, Update, Delete — the basic operations for data management. |
| **DDL**           | Data Definition Language   | Defines the structure of the database (e.g., tables, schemas).                  |
| **DML**           | Data Manipulation Language | Manipulates data within tables (e.g., insert, update, delete).                  |
| **DQL**           | Data Query Language        | Focused on retrieving data (e.g., `SELECT`).                                    |
| **DCL**           | Data Control Language      | Manages permissions and access control (e.g., `GRANT`, `REVOKE`).              |
| **TCL**           | Transaction Control Language | Handles transactions (e.g., `COMMIT`, `ROLLBACK`).                              |