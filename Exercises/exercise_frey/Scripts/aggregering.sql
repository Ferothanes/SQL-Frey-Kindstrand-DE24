--Aggregeringsuppgift use plants
--SUM, AVG, COUNT, MIN, och MAX.
--GROUP BY för att dela upp datan i mindre grupper innan aggregeringsfunktionen körs. 
--Utan GROUP BY aggregerar du hela tabellen som en enda grupp.

SELECT SUM(salary) AS total_lön FROM data_jobs;

SELECT AVG(salary) AS Medellön FROM data_jobs;


SELECT Kategori, COUNT(*) AS AntalProdukter  
FROM produkter  
GROUP BY Kategori;


--limit
SELECT * FROM your_table_name LIMIT 10;



