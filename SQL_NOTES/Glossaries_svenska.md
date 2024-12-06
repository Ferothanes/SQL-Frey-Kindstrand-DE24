# Glossary of SQL and Related Terms

| **Termiology**       | **Explanation**                                           |
|----------------------|-----------------------------------------------------------|
| CRUD                 | Skapa, Läs, Uppdatera, Ta bort - grundläggande operationer för att interagera med databaser. |
| Query                | En begäran om att hämta eller manipulera data i en databas. |
| Statement            | En fullständig instruktion i SQL för att utföra en operation på databasen. |
| DDL                  | Data Definition Language - kommandon för att definiera databasstrukturer (t.ex., `CREATE`, `ALTER`). |
| DML                  | Data Manipulation Language - kommandon för att modifiera data (t.ex., `INSERT`, `UPDATE`). |
| Idempotent           | En operation som ger samma resultat även om den utförs flera gånger. |
| Table                | En strukturerad uppsättning data organiserad i rader och kolumner i en databas. |
| Schema               | Strukturen eller designen av en databas, inklusive dess tabeller, kolumner och relationer. |
| Row                  | En enskild horisontell post i en tabell, som representerar ett datainsteg. |
| Record               | Synonym för rad; ett enskilt datainsteg i en tabell. |
| Column               | Ett vertikalt fält i en tabell som definierar en dataattribut. |
| Database             | En strukturerad samling data som lagras elektroniskt. |
| Persistence          | Data som förblir lagrad även efter att applikationen eller systemet stängs. |
| DQL                  | Data Query Language - SQL-kommandon som fokuserar på att fråga data (t.ex., `SELECT`). |
| Relational Database  | En typ av databas som organiserar data i tabeller med definierade relationer. |
| Dot Commands         | Specialkommandon i SQL-gränssnitt, vanligtvis med ett punktprefix (t.ex., `.help`). |
| CLI                  | Command-Line Interface - ett textbaserat gränssnitt för att interagera med system. |
| Bash                 | En Unix-shell som används för skriptning och körning av kommandon i terminalen. |
| Type Inference       | Automatisk bestämning av datatypen för ett värde eller uttryck. |
| Clause               | En del av ett SQL-uttalande som definierar specifika åtgärder (t.ex., `WHERE`, `ORDER BY`). |
| Aliasing             | Omdöpning av en tabell eller kolumn för enklare referens i SQL-frågor (t.ex., `AS`). |
| SQL Statement        | Ett fullständigt SQL-kommando för att utföra en databasoperation. |
| Persistent Database  | En databas som lagrar data permanent på disk, till skillnad från i minnet. |
| .wal                 | Write-Ahead Logging-fil som används för databasåterställning och transaktionsloggning. |
| IDE                  | Integrated Development Environment - mjukvara för kodning och projektledning. |
| CSV                  | Comma-Separated Values - ett filformat för tabulär data. |
| Namespace            | En logisk gruppering av namn för att undvika namngivningskonflikter. |
| SELECT clause        | Anger vilka kolumner som ska ingå i resultatet av en fråga. |
| WHERE clause         | Filtrerar de rader som returneras av en fråga baserat på ett angivet villkor. |
| Condition            | Ett uttryck som används för att utvärdera om en rad i en fråga ska ingå i resultatet. |
| BETWEEN              | Filtrerar resultat genom att kontrollera om ett värde ligger inom ett specifikt intervall (inkluderande). |
| Aggregate Functions  | Funktioner som utför beräkningar på flera rader data för att returnera ett enda värde (t.ex., `COUNT`, `AVG`). |
| Range Filtering      | Förfining av frågeresultat för att inkludera endast data inom ett specifikt intervall, ofta med `BETWEEN` eller jämförelseoperatorer. |
| Pattern Matching     | Sökning efter ett specificerat mönster i en kolumn, ofta med `LIKE`-operatorn. |
| List Filtering       | Filtrering av frågeresultat för att inkludera värden som matchar en specificerad lista (med `IN`). |
|--------------------|---------------------------------------------------------------------------------|
| **Temporal**       | Hanterar tidsbaserad data som datum och tider.                                  |
| **Interval**       | Ett tidsintervall, som "5 dagar" eller "2 timmar."                             |
| **Synthetic**      | Falsk eller simulerad data skapad för testning.                                 |
| **VALUES**         | Används för att ange fasta värden i SQL, som att lägga till rader manuellt.     |
| **Subquery**       | En fråga inuti en annan fråga.                                                 |
| **Compound Query** | Kombinerar resultat från två eller fler frågor.                                |
| **Set Operations** | Sätt att kombinera eller jämföra data från flera frågor.                        |
| **EXCEPT**         | Visar data från den första frågan som inte finns i den andra.                  |
| **Result Set**     | Tabellen eller listan med resultat du får från en fråga.                        |
| **UNION**          | Kombinerar resultat från två frågor och tar bort dubbletter.                    |
| **UNION ALL**      | Kombinerar resultat från två frågor och behåller alla rader, även dubbletter.  |
| **Operator**       | Symboler eller ord som utför beräkningar eller jämförelser, som `+` eller `=`. |
| **INTERSECT**      | Visar data som är gemensam mellan två frågor.                                   |
| **Venn Diagram**   | Ett diagram som visar hur mängder överlappar eller skiljer sig åt.             |
| **LEFT JOIN**      | Returnerar alla rader från den första tabellen och matchar från den andra.     |
| **INNER JOIN**     | Returnerar endast rader som matchar i båda tabellerna.                         |
| **RIGHT JOIN**     | Returnerar alla rader från den andra tabellen och matchar från den första.     |
| **LIKE**           | Används för att hitta text som matchar ett mönster, som "börjar med A."        |
