# CRUD Operations and SQL Commands

| **CRUD Operation** | **SQL Commands**                              | **Description**                                                               |
|---------------------|-----------------------------------------------|-------------------------------------------------------------------------------|
| **Create**          | `INSERT`, `CREATE TABLE`, `CREATE DATABASE`  | Adds new rows to a table or creates new databases/tables.                     |
| **Read**            | `SELECT`                                     | Retrieves data from a table based on criteria.                                |
| **Update**          | `UPDATE`                                     | Modifies existing rows in a table.                                            |
| **Delete**          | `DELETE`                                     | Removes data from a table based on criteria.                                  |

1. Create (Insert Data)
    INSERT INTO users (name, email, age) 
    VALUES ('John Doe', 'john@example.com', 30);

2. Read (Retrieve Data)
    SELECT * FROM users WHERE id = 1;

3. Update (Modify Data)
    UPDATE users SET email = 'new_email@example.com' WHERE id = 1;
    
4. Delete (Remove Data)
    DELETE FROM users WHERE id = 1;
