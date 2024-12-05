DESC;

SELECT * FROM main.plants;
SELECT * FROM main.plant_care;

--------LEFT JOIN----------Allt från västra kolumnen, om det inte finns match i tabell B = NULL

SELECT --adds the columns you want 
	p.plant_id,
	p.plant_name, 
	p.type, 
	pc.water_schedule, 
	pc.sunlight
FROM -- joins the two tables 
	main.plants p
LEFT JOIN
	main.plant_care pc ON p.plant_id = pc.plant_id;

------INNER JOIN---------------Det som finns i både kolumner visas

SELECT --adds the columns you want 
	p.plant_id,
	p.plant_name, 
	p.type, 
	pc.water_schedule, 
	pc.sunlight
FROM -- joins the two tables 
	main.plants p
INNER JOIN
	main.plant_care pc ON p.plant_id = pc.plant_id;
	
------FULL JOIN---------------Allt inkluderas, om det inte finns en match i ena tabellen fylls den med NULL

SELECT --adds the columns you want 
	p.plant_id,
	p.plant_name, 
	p.type, 
	pc.water_schedule, 
	pc.sunlight
FROM -- joins the two tables 
	main.plants p
FULL JOIN
	main.plant_care pc ON p.plant_id = pc.plant_id;
	