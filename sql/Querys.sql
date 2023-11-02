# que empleado alquilo mas peliculas.

SELECT staff_id, COUNT(*) AS total_alquileres
FROM rental
GROUP BY staff_id
ORDER BY total_alquileres DESC;

# contar que cliente tiene mas alquileres y titulos alquilados.

SELECT 
    c.customer_id,
    c.nombre,
    c.apellido,
    COUNT(r.rental_id) AS total_alquileres,
    f.title
FROM customer c

JOIN rental r ON c.customer_id = r.customer_id

JOIN inventory i ON r.inventory_id = i.inventory_id

JOIN film f ON i.film_id = f.film_id

GROUP BY c.customer_id,  c.nombre, c.apellido, f.title

ORDER BY total_alquileres DESC;

# Que peliculas tiene mayor tiempo de alquiler

SELECT title, SUM(rental_duration) as total_rental_duration
FROM film
GROUP BY title
ORDER BY total_rental_duration DESC;

# Muestra total de alquiler por cliente y muestra titulo alquilado.
SELECT 
    c.customer_id, 
    c.nombre, 
    c.apellido, 
    COUNT(r.rental_id) AS total_alquileres,
    f.title
FROM customer c

JOIN rental r ON c.customer_id = r.customer_id

JOIN inventory i ON r.inventory_id = i.inventory_id

JOIN film f ON i.film_id = f.film_id

GROUP BY c.customer_id, c.nombre, c.apellido, f.title

ORDER BY total_alquileres DESC;
    
# peliculas y descripcion de las que son en ingles
    
SELECT film.title, film.description
FROM film
JOIN language on film.language_id = language.language_id
WHERE language.name = 'English';


# encontrar toda las peliculas que esten disponibles en el inventario
SELECT title
FROM film
WHERE film.film_id IN(SELECT DISTINCT inventory.film_id FROM inventory);

# actores que esten relacionados con peliculas y su titulo
SELECT actor.actor_id, actor.first_name, actor.last_name, actor_film.film_id, film.title
FROM actor
LEFT JOIN actor_film ON actor.actor_id = actor_film.actor_id
LEFT JOIN film ON actor_film.film_id = film.film_id





