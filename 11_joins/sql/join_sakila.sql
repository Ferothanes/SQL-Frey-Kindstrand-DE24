desc;

SELECT * FROM main.film;
SELECT * FROM main.film_actor fa; -- both lists have a film_id

--We can connect film actor with the title
--which actor played which film

SELECT
	a.first_name,
	a.last_name
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	a.actor_id = fa.actor_id;



--which actor played which film title?
SELECT * FROM main.actor a;	
SELECT * FROM main.film;


SELECT
	a.first_name,
	a.last_name,
	f.title, 
	f.description --now since the table is connected you can add from main.film and main.actor
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN main.film f ON f.film_id = fa.film_id;



--film & category
desc;
SELECT * FROM main.film_category fc ;
SELECT * FROM main.category c; --both lists have a category_id

SELECT
	f.title,
	c.name AS 'Genre'
FROM
	main.film_category fc
JOIN main.category c ON 
	fc.category_id = c.category_id
JOIN main.film f ON
	fc.film_id = f.film_id ;


--staff address, city, country
desc;
SELECT * FROM main.staff s ;
SELECT * FROM main.address a; -- both have adress_id
SELECT * FROM main.country cty; -- has country_id


SELECT 
	s.first_name, 
	s.last_name, 
	a.address, 
	c.city, 
	cty.country 
FROM 
	main.staff s
LEFT JOIN main.address a ON
	s.address_id = a.address_id 
LEFT JOIN main.city c ON
	a.city_id = c.city_id
LEFT JOIN main.country cty ON
	cty.country_id = c.country_id ;
	
	














