## Theory questions 

### a) What are the main categories of SQL commands?

Svar:
De huvudsakliga kategorierna av SQL-kommandon är:

    DML (Data Manipulation Language): Används för att hämta, uppdatera, infoga och ta bort data (t.ex. SELECT, INSERT, UPDATE, DELETE).
    DDL (Data Definition Language): Används för att definiera och ändra strukturen på databaser och tabeller (t.ex. CREATE, ALTER, DROP).
    DCL (Data Control Language): Används för att ge eller ta bort behörigheter för användare (t.ex. GRANT, REVOKE).
    TCL (Transaction Control Language): Hanterar transaktioner (t.ex. COMMIT, ROLLBACK, SAVEPOINT).

### b) Explain the difference between HAVING and WHERE clauses.

    Svar:
        WHERE filtrerar rader innan gruppering och aggregering sker.
        HAVING filtrerar grupper efter att aggregering har genomförts.

### c) How to make sure you delete the correct rows?

    Svar:
    Använd WHERE-klasulen för att specificera de rader som ska tas bort. Om du inte använder en WHERE-sats tas alla rader bort från tabellen.

### d) How do you retrieve unique values in a column?

    Svar:
    Använd DISTINCT i en SELECT-sats för att hämta unika värden i en kolumn.
    Exempel: SELECT DISTINCT job_title FROM table_name;

### e) What does data transformation mean?

    Svar:
    Data transformation innebär att omvandla data från ett format eller en struktur till ett annat för att underlätta analys eller rapportering. Det kan innebära att ändra värden, sammanfoga eller dela upp data.

### f) How do you create a new row in a table?

    Svar:
    Använd INSERT INTO för att lägga till en ny rad i en tabell.
    Exempel: INSERT INTO table_name (column1, column2) VALUES (value1, value2);

### g) What happens if you omit the WHERE clause in an UPDATE statement?

    Svar:
    Om du utelämnar WHERE-klasulen i en UPDATE-sats kommer alla rader i tabellen att uppdateras med de nya värdena.

### h) What happens if you omit the WHERE clause in a DELETE statement?

    Svar:
    Om du utelämnar WHERE-klasulen i en DELETE-sats kommer alla rader i tabellen att tas bort.

### i) What is a conditional statement in SQL, and can it be used with SELECT?

    Svar:
    En conditional statement i SQL används för att göra villkorsbaserade beslut. Ett exempel är CASE, som kan användas i en SELECT-sats för att skapa villkorliga värden baserat på kolumnvärden.
    Exempel:
    SELECT job_title, CASE WHEN salary > 10000 THEN 'High' ELSE 'Low' END FROM employees;

### 1) What is SQL, and why is it important in relational databases?

    Svar: SQL (Structured Query Language) används för att hantera och fråga relationsdatabaser. Det är viktigt eftersom det organiserar data i tabeller och gör det möjligt att effektivt skapa, läsa, uppdatera och ta bort data.

### 2) Explain the difference between HAVING and WHERE clauses.

    Svar:
    WHERE filtrerar rader innan gruppbildning och aggregering.
    HAVING filtrerar grupper efter att de har aggregerats.

### 3) Explain the purpose of the LIMIT or TOP clause in a SQL query.

    Svar: LIMIT (eller TOP) begränsar antalet rader som returneras av en fråga. Används för att hämta ett litet urval från stora datamängder.

### 4) What are the primary functions of the Data Definition Language (DDL) in SQL?

    Svar: DDL används för att definiera och ändra databasens struktur, exempelvis genom kommandon som CREATE, ALTER och DROP för tabeller och index.

### 5) Explain the differences between the Data Manipulation Language (DML) and Data Definition Language (DDL).

    Svar:
    DML: Används för att hantera data (t.ex. INSERT, UPDATE, DELETE).
    DDL: Används för att hantera databasens struktur (t.ex. CREATE, DROP).

### 6) What type of dot commands are there in DuckDB?

    Svar: Dot-kommandon är speciella kommandon i DuckDB som utför olika funktioner, som .help (visa kommandon), .tables (visa tabeller) och .schema (visa schema).

### 7) What makes DuckDB unique compared to other databases?

    Svar: DuckDB är optimerat för analytiska frågor på lokala filer och fungerar direkt med format som CSV och Parquet utan att behöva en server.

### 8) Is DuckDB suitable for real-time data processing?

    Svar: Nej, DuckDB är designat för analytiska arbetsbelastningar och är inte optimerat för realtids bearbetning av transaktioner.

### 9) Difference between read_csv and read_csv_auto?

    Svar:
    read_csv: Kräver att du manuellt specificerar filens parametrar (t.ex. avgränsare, header).
    read_csv_auto: Detekterar automatiskt filens parametrar, vilket gör det enklare att importera enkla CSV-filer.

### 9) What is the purpose and advantages of using an IDE such as DBeaver?

    Svar: En IDE som DBeaver gör det lättare att hantera databaser genom att erbjuda en användarvänlig gränssnitt för att köra frågor, visa data och hantera databasens struktur.
