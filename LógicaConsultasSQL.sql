
/*
1. Crea el esquema de la BBDD.
2. Muestra los nombres de todas las películas con una clasificación por edades de ‘R’.
3. Encuentra los nombres de los actores que tengan un “actor_id” entre 30 y 40.
4. Obtén las películas cuyo idioma coincide con el idioma original.
5. Ordena las películas por duración de forma ascendente.
6. Encuentra el nombre y apellido de los actores que tengan ‘Allen’ en su apellido.
7. Encuentra la cantidad total de películas en cada clasificación de la tabla “film” y muestra la clasificación junto con el recuento.
8. Encuentra el título de todas las películas que son ‘PG-13’ o tienen una duración mayor a 3 horas en la tabla film.
9. Encuentra la variabilidad de lo que costaría reemplazar las películas.
10. Encuentra la mayor y menor duración de una película de nuestra BBDD.
11. Encuentra lo que costó el antepenúltimo alquiler ordenado por día.
12. Encuentra el título de las películas en la tabla “film” que no sean ni ‘NC- 17’ ni ‘G’ en cuanto a su clasificación.
13. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.
14. Encuentra el título de todas las películas que tengan una duración mayor a 180 minutos.
15. ¿Cuánto dinero ha generado en total la empresa?
16. Muestra los 10 clientes con mayor valor de id.
17. Encuentra el nombre y apellido de los actores que aparecen en la película con título ‘Egg Igby’.
18. Selecciona todos los nombres de las películas únicos.
19. Encuentra el título de las películas que son comedias y tienen una duración mayor a 180 minutos en la tabla “film”.
20. Encuentra las categorías de películas que tienen un promedio de duración superior a 110 minutos y muestra el nombre de la categoría junto con el promedio de duración.
21. ¿Cuál es la media de duración del alquiler de las películas?
22. Crea una columna con el nombre y apellidos de todos los actores y actrices.
23. Números de alquiler por día, ordenados por cantidad de alquiler de forma descendente.
24. Encuentra las películas con una duración superior al promedio.
25. Averigua el número de alquileres registrados por mes.
26. Encuentra el promedio, la desviación estándar y varianza del total
pagado.
27. ¿Qué películas se alquilan por encima del precio medio?
28. Muestra el id de los actores que hayan participado en más de 40
películas.
29. Obtener todas las películas y, si están disponibles en el inventario,
mostrar la cantidad disponible.
30. Obtener los actores y el número de películas en las que ha actuado.
31. Obtener todas las películas y mostrar los actores que han actuado en
ellas, incluso si algunas películas no tienen actores asociados.
32. Obtener todos los actores y mostrar las películas en las que han
actuado, incluso si algunos actores no han actuado en ninguna película.
33. Obtener todas las películas que tenemos y todos los registros de
alquiler.
34. Encuentra los 5 clientes que más dinero se hayan gastado con nosotros.
35. Selecciona todos los actores cuyo primer nombre es 'Johnny'.
36. Renombra la columna “first_name” como Nombre y “last_name” como
Apellido.
37. Encuentra el ID del actor más bajo y más alto en la tabla actor.
38. Cuenta cuántos actores hay en la tabla “actor”.
39. Selecciona todos los actores y ordénalos por apellido en orden
ascendente.
40. Selecciona las primeras 5 películas de la tabla “film”.
41. Agrupa los actores por su nombre y cuenta cuántos actores tienen el
mismo nombre. ¿Cuál es el nombre más repetido?
42. Encuentra todos los alquileres y los nombres de los clientes que los
realizaron.
43. Muestra todos los clientes y sus alquileres si existen, incluyendo
aquellos que no tienen alquileres.
44. Realiza un CROSS JOIN entre las tablas film y category. ¿Aporta valor
esta consulta? ¿Por qué? Deja después de la consulta la contestación.
45. Encuentra los actores que han participado en películas de la categoría
'Action'.
46. Encuentra todos los actores que no han participado en películas.
47. Selecciona el nombre de los actores y la cantidad de películas en las
que han participado.
48. Crea una vista llamada “actor_num_peliculas” que muestre los nombres
de los actores y el número de películas en las que han participado.
49. Calcula el número total de alquileres realizados por cada cliente.
50. Calcula la duración total de las películas en la categoría 'Action'.
51. Crea una tabla temporal llamada “cliente_rentas_temporal” para
almacenar el total de alquileres por cliente.
52. Crea una tabla temporal llamada “peliculas_alquiladas” que almacene las
películas que han sido alquiladas al menos 10 veces.
53. Encuentra el título de las películas que han sido alquiladas por el cliente
con el nombre ‘Tammy Sanders’ y que aún no se han devuelto. Ordena
los resultados alfabéticamente por título de película.
54. Encuentra los nombres de los actores que han actuado en al menos una
película que pertenece a la categoría ‘Sci-Fi’. Ordena los resultados
alfabéticamente por apellido.
55. Encuentra el nombre y apellido de los actores que han actuado en
películas que se alquilaron después de que la película ‘Spartacus
Cheaper’ se alquilara por primera vez. Ordena los resultados
alfabéticamente por apellido.
56. Encuentra el nombre y apellido de los actores que no han actuado en
ninguna película de la categoría ‘Music’.
57. Encuentra el título de todas las películas que fueron alquiladas por más
de 8 días.
58. Encuentra el título de todas las películas que son de la misma categoría
que ‘Animation’.
59. Encuentra los nombres de las películas que tienen la misma duración
que la película con el título ‘Dancing Fever’. Ordena los resultados
alfabéticamente por título de película.
60. Encuentra los nombres de los clientes que han alquilado al menos 7
películas distintas. Ordena los resultados alfabéticamente por apellido.
61. Encuentra la cantidad total de películas alquiladas por categoría y
muestra el nombre de la categoría junto con el recuento de alquileres.
62. Encuentra el número de películas por categoría estrenadas en 2006.
63. Obtén todas las combinaciones posibles de trabajadores con las tiendas
que tenemos.
64. Encuentra la cantidad total de películas alquiladas por cada cliente y
muestra el ID del cliente, su nombre y apellido junto con la cantidad de
películas alquiladas.
*/


--2. Muestra los nombres de todas las películas con una clasificación por edades de ‘R’.

select film_id, title as nombre_de_la_película, rating as clasificación
from film
where rating='R'


--3. Encuentra los nombres de los actores que tengan un “actor_id” entre 30 y 40.

select actor_id, first_name as nombre_del_actor, last_name as apellido_del_actor
from actor
where actor_id between 30 and 40

--4. Obtén las películas cuyo idioma coincide con el idioma original.

select film_id, title as nombre_de_la_película, language_id as idioma, original_language_id as idioma_original
from film
where language_id=original_language_id 

--5. Ordena las películas por duración de forma ascendente.

select *
from film 
order by length ASC

--6. Encuentra el nombre y apellido de los actores que tengan ‘Allen’ en su apellido.

select actor_id, first_name as nombre, last_name as apellido
from actor 
where last_name='ALLEN'

--7. Encuentra la cantidad total de películas en cada clasificación de la tabla “film” y muestra la clasificación junto con el recuento.

select rating as clasificación, count(film_id is not null) as recuento
from film 
group by rating

--8. Encuentra el título de todas las películas que son ‘PG-13’ o tienen una duración mayor a 3 horas en la tabla film.

select film_id, title as título_película, rating as clasificación, length as duración
from film
where length>'180' or rating='PG-13'

---9. Encuentra la variabilidad de lo que costaría reemplazar las películas.

select count(film_id) as total_películas, sum(replacement_cost) as coste_total_reemplazo, avg(replacement_cost) as promedio_reemplazo, stddev(replacement_cost) as variación_estándard, variance(replacement_cost) as varianza_reemplazo,
min(replacement_cost) as valor_mínimo_reemplazo, max(replacement_cost) as valor_maximo_reemplazo
from film

--10. Encuentra la mayor y menor duración de una película de nuestra BBDD.

select max(length) as mayor_duración_minutos, min(length) as menor_duración_minutos
from film

--11. Encuentra lo que costó el antepenúltimo alquiler ordenado por día.

select rental.rental_id, rental.rental_date as fecha_alquiler, payment.amount as "coste" 
from rental
join payment on rental.rental_id=payment.payment_id
order by rental.rental_date desc, rental.rental_id desc
limit 1
offset 2

--12. Encuentra el título de las películas en la tabla “film” que no sean ni ‘NC- 17’ ni ‘G’ en cuanto a su clasificación.

select film_id, title as título, rating as clasificación
from film
where rating not in ('NC-17','G')


--13. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto 
--con el promedio de duración.

select rating as clasificación, round(avg(length),0) as promedio_duración_minutos
from film 
group by rating

--14. Encuentra el título de todas las películas que tengan una duración mayor a 180 minutos.

select film_id, title as título, length as duración
from film
where length>180

--15. ¿Cuánto dinero ha generado en total la empresa?

select sum(amount) as dinero_generado_alquileras
from payment

--16. Muestra los 10 clientes con mayor valor de id.

select customer_id, first_name as nombre_del_cliente, last_name as apellido_del_cliente
from customer
order by customer_id desc
limit 10

--17. Encuentra el nombre y apellido de los actores que aparecen en la película con título ‘Egg Igby’.
---con múltiples CTEs antes del SELECT
with id_Egg_Igby as (
select film_id
from film
where title='EGG IGBY'
),
actores_Egg_Igby as (
select actor_id
from film_actor
where film_actor.film_id in (select * from id_Egg_Igby)
)
select actor.actor_id, actor.first_name as nombre_actor, actor.last_name as apellido_actor
from actor 
where actor_id in (select *from actores_Egg_Igby)

--con un join
select film.film_id, film.title as título, actor.actor_id, actor.first_name as nombre_del_actor, actor.last_name as apellido_del_actor
from film
join film_actor on film.film_id=film_actor.film_id
join actor on actor.actor_id=film_actor.actor_id
where film.title='EGG IGBY'

--18. Selecciona todos los nombres de las películas únicos.

select distinct(title) as nombre_de_la_película_único
from film 

--19. Encuentra el título de las películas que son comedias y tienen una duración mayor a 180 minutos en la tabla “film”.

select film.film_id, film.title as título_de_la_película, category.name as categoría, film.length as duración_en_minutos
from film
join film_category on film.film_id=film_category.film_id
join category on category.category_id=film_category.category_id
where category.name='Comedy'and film.length>180

--21. ¿Cuál es la media de duración del alquiler de las películas? (**)
select avg(return_date-rental_date) as media_duración_del_alquiler
from rental

--22. Crea una columna con el nombre y apellidos de todos los actores y actrices.
select actor_id, concat(first_name,' ',last_name) as nombre_y_apellidos
from actor

---23. Números de alquiler por día, ordenados por cantidad de alquiler de forma descendente (***)

with alquiler_día as 
(select date(rental_date) as día, rental_id 
from rental)
select día, count(rental_id) as Número_de_alquileres
from alquiler_día
group by día 
order by Número_de_alquileres DESC

---24. Encuentra las películas con una duración superior al promedio. (****)

select round(avg(length),0) as duración_promedio_minutos
from film

select film_id, title as nombre_de_película, length as duración_minutos
from film 
where length> (select avg(length) from film)

---25. Averigua el número de alquileres registrados por mes.
with alquileres_mes as (
select concat(extract(year from rental_date),'-', extract(month from rental_date)) as mes, rental_id
from rental)
select mes, count(rental_id) as alquileres
from alquileres_mes
group by mes

---26. Encuentra el promedio, la desviación estándar y varianza del total pagado.

select round(avg(amount),1) as promedio_pagado, round(stddev(amount),2) as desviación_estándar_pagado, round(variance(amount),2) as varianza_pagado
from payment

--27. ¿Qué películas se alquilan por encima del precio medio?

select film.film_id, film.title as título_película, round(avg(payment.amount),2) as alquiler_promedio_película
from payment
join rental on payment.rental_id=rental.rental_id 
join inventory on rental.inventory_id=inventory.inventory_id
join film on inventory.film_id=film.film_id 
where payment.amount > (select avg(payment.amount) from payment)
group by film.film_id
order by alquiler_promedio_película desc


--28. Muestra el id de los actores que hayan participado en más de 40 películas.

select actor_id, count(film_id) as películas_participación
from film_actor
group by actor_id
having count(film_id)>40

--29. Obtener todas las películas y, si están disponibles en el inventario, mostrar la cantidad disponible

select film.film_id, film.title as título, count(inventory.inventory_id is not null) as cantidad_disponible_inventario
from film 
left join inventory on film.film_id=inventory.film_id 
group by film.film_id
order by cantidad_disponible_inventario desc

--30. Obtener los actores y el número de películas en las que ha actuado.

select actor.actor_id, actor.first_name as nombre_actor, last_name as apellido_actor, count (film_actor.film_id is not null) as número_películas
from actor
join film_actor on actor.actor_id=film_actor.actor_id 
group by actor.actor_id
order by número_películas desc

--31. Obtener todas las películas y mostrar los actores que han actuado en ellas, incluso si algunas películas no tienen actores asociados.

select film.film_id, film.title as título_película, count (film_actor is not null) as número_de_actores
from film	
left join film_actor on film.film_id=film_actor.film_id 
group by film.film_id
order by número_de_actores desc

--32. Obtener todos los actores y mostrar las películas en las que han actuado, 
--incluso si algunos actores no han actuado en ninguna película.

select actor.actor_id, actor.first_name as nombre_actor, last_name as apellido_actor, count (film_actor.film_id is not null) as número_películas
from actor
left join film_actor on actor.actor_id=film_actor.actor_id 
group by actor.actor_id
order by número_películas desc

--33. Obtener todas las películas que tenemos y todos los registros de alquiler.

select film.film_id, film.title as título_película, count (rental.rental_id is not null) as registros_alquiler
from film
left join inventory on film.film_id=inventory.film_id
left join rental on inventory.inventory_id=rental.inventory_id 
group by film.film_id
order by registros_alquiler desc

--34. Encuentra los 5 clientes que más dinero se hayan gastado con nosotros.

select customer.customer_id, customer.first_name as nombre_cliente, customer.last_name as apellid_client, sum (payment.amount) as gastado
from customer
left join rental on customer.customer_id=rental.customer_id
left join payment on rental.rental_id=payment.rental_id
group by customer.customer_id
order by gastado desc
limit 5

--35. Selecciona todos los actores cuyo primer nombre es 'Johnny'.

select *
from actor 
where actor.first_name='JOHNNY'

--36. Renombra la columna “first_name” como Nombre y “last_name” como Apellido.

select actor_id, first_name as Nombre, last_name as Apellido
from actor 

--37. Encuentra el ID del actor más bajo y más alto en la tabla actor.

select min(actor_id) as ID_Más_Bajo, max(actor_id) as ID_Más_Alto
from actor

---38. Cuenta cuántos actores hay en la tabla “actor”.

select count (distinct actor_id) as número_de_actores_tabla
from actor

--39. Selecciona todos los actores y ordénalos por apellido en orden ascendente.

select *
from actor 
order by last_name asc

--40. Selecciona las primeras 5 películas de la tabla “film”.

select *
from film
limit 5

--41. Agrupa los actores por su nombre y cuenta cuántos actores tienen el mismo nombre. ¿Cuál es el nombre más repetido?

select first_name as nombre_actor, count(actor_id) as repeticiones_nombre
from actor 
group by first_name 
order by repeticiones_nombre desc

---los nombres más repetidos son Kenneth, Penélope, Julia

--42. Encuentra todos los alquileres y los nombres de los clientes que los realizaron.

select rental.rental_id, customer.first_name as nombre_cliente
from rental 
left join customer on rental.customer_id=customer.customer_id 

--43. Muestra todos los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres.

select *
from customer 
left join rental on customer.customer_id=rental.customer_id 

--44. Realiza un CROSS JOIN entre las tablas film y category. ¿Aporta valor
esta consulta? ¿Por qué? Deja después de la consulta la contestación.

select *
from film 
cross join category 
--realizar un cross join entre las tables film y category aportan todas las distintas posibles versiones de esa película 
--una con cada categoría, incluyendo la categoría actual

--45. Encuentra los actores que han participado en películas de la categoría 'Action'.

--con múltiples CTEs antes de SELECT
with id_categoría_action as (
select category_id
from category
where name='Action'
),
film_action as ( 
select film_id
from film_category
where film_category.category_id in (select * from id_categoría_action)
),
actor_action as (
select actor_id
from film_actor
where film_actor.film_id in (select * from film_action)
)
select actor_id, actor.first_name as nombre_actor, actor.last_name as apellido_actor
from actor
where actor.actor_id in (select * from actor_action)

---con un join 
select actor.actor_id, actor.first_name as Nombre_Actor, actor.last_name as Apellido_Actor,
count (film.film_id is not null) as Número_Películas_Participaciones
from category 
left join film_category on category.category_id=film_category.category_id 
left join film on film_category.film_id=film.film_id 
left join film_actor on film.film_id=film_actor.film_id
left join actor on film_actor.actor_id=actor.actor_id
where category.name='Action'
group by actor.actor_id
order by Número_Películas_Participaciones desc


--46. Encuentra todos los actores que no han participado en películas.

select actor_id, first_name as Nombre_Actor, last_name as Apellido_actor
from actor 
where actor_id not in 
(select actor_id from film_actor)

--47. Selecciona el nombre de los actores y la cantidad de películas en las que han participado.

select actor.actor_id, actor.first_name as Nombre_Actor, actor.last_name as Apellido_Actor, 
count (film_actor.film_id is not null) as Número_Películas_Participado
from actor 
left join film_actor on actor.actor_id=film_actor.actor_id
group by actor.actor_id 
order by Número_Películas_Participado desc

--48. Crea una vista llamada “actor_num_peliculas” que muestre los nombres
--de los actores y el número de películas en las que han participado.

create view as 
select actor.actor_id, actor.first_name as Nombre_Actor, actor.last_name as Apellido_Actor, 
count (distinct film_actor.film_id) as Número_Películas_Participado
from actor 
left join film_actor on actor.actor_id=film_actor.actor_id
group by actor.actor_id 


--49. Calcula el número total de alquileres realizados por cada cliente.

select customer.customer_id, customer.first_name as Nombre_Cliente, customer.last_name as Apellido_Cliente,
count (distinct rental.rental_id) as total_alquileres
from customer 
left join rental on customer.customer_id=rental.rental_id 
group by customer.customer_id 
order by total_alquileres desc

--52. Crea una tabla temporal llamada “peliculas_alquiladas” que almacene las
--películas que han sido alquiladas al menos 10 veces.

create temporary table películas_alquiladas as
select *
from film
where film.film_id in (
select film.film_id
from film
left join inventory on film.film_id=inventory.film_id 
left join rental on inventory.inventory_id=rental.inventory_id
group by film.film_id
having count(rental.rental_id is not null)>=10)


--53. Encuentra el título de las películas que han sido alquiladas por el cliente
--con el nombre ‘Tammy Sanders’ y que aún no se han devuelto. Ordena
--los resultados alfabéticamente por título de película.

with codigo_cliente_TammySanders as (
select customer_id
from customer
where first_name='TAMMY' and last_name='SANDERS'
),
inventario_nodevuelto_TammySanders as (
select inventory_id
from rental 
where return_date<last_update and customer_id in (select * from codigo_cliente_TammySanders)
),
películas_nodevueltas_TammySanders as (
select film_id
from inventory
where inventory_id in (select inventory_id from inventario_nodevuelto_TammySanders)
)
select film_id, title as Nombre_Película
from film
where film_id in (select * from películas_nodevueltas_TammySanders)
order by Nombre_Película asc

/*
54. Encuentra los nombres de los actores que han actuado en al menos una
película que pertenece a la categoría ‘Sci-Fi’. Ordena los resultados
alfabéticamente por apellido.
*/

with categoría_Sci_Fi as (
select category_id
from category
where category.name='Sci-Fi'
),
film_Sci_Fi as (
select film_id
from film_category
where category_id in (select * from categoría_Sci_Fi)
),
actores_Sci_Fi as (
select actor_id
from film_actor
where film_id in (select * from film_Sci_Fi)
)
select actor_id, first_name as Nombre_Actor_Sci_Fi, last_name as Apellido_Actor_Sci_Fi
from actor
where actor_id in (select * from actores_Sci_Fi)
order by Apellido_Actor_Sci_Fi asc


--55. Encuentra el nombre y apellido de los actores que han actuado en
--películas que se alquilaron después de que la película ‘Spartacus
--Cheaper’ se alquilara por primera vez. Ordena los resultados
--alfabéticamente por apellido.

with film_id_Spartacus as (
select film_id
from film
where title='SPARTACUS CHEAPER'
),
inventory_id_Spartacus as (
select inventory_id
from inventory
where film_id in (select * from film_id_Spartacus)
),
rental_alquiler_Spartacus1vez as (
select rental_date
from rental
where inventory_id in (select * from inventory_id_Spartacus)
order by rental_date asc
limit 1),
inventory_despuesSpartacus1vez as (
select inventory_id
from rental
where rental_date >= (select * from rental_alquiler_Spartacus1vez) 
),
film_despuesSpartacus1vez as (
select film_id
from inventory
where inventory_id in (select * from inventory_despuesSpartacus1vez)
),
actores_despuesSpartacus1vez as (
select actor_id
from film_actor
where film_id in (select * from film_despuesSpartacus1vez)
)
select actor_id, first_name as Primer_Apellido, last_name as Segundo_Apellido
from actor
where actor_id in (select * from actores_despuesSpartacus1vez)
order by Segundo_Apellido asc


--56. Encuentra el nombre y apellido de los actores que no han actuado en
--ninguna película de la categoría ‘Music’.

--con múltiples ctes antes del select
with categoría_Music as (
select category_id
from category 
where name='Music'
),
películas_Music as (
select film_id
from film_category
where category_id in (select * from categoría_Music)
),
actores_Music as (
select actor_id
from film_actor
where film_id in (select * from películas_Music)
)
select actor_id, first_name as Nombre_Actor, last_name as Apellido_Actor
from actor
where actor_id not in (select * from actores_Music)

---57. Encuentra el título de todas las películas que fueron alquiladas por más
de 8 días.

--como múltiples ctes antes del select--
with inventory_días as (
select inventory_id, extract(day from sum(return_date-rental_date))as días_alquilados
from rental
group by inventory_id
),
películas_días as (
select film_id, sum(inventory_días.días_alquilados) as días_alquilados
from inventory
join inventory_días on inventory.inventory_id=inventory_días.inventory_id
group by inventory.film_id
)
select film.film_id, film.title as Título, películas_días.días_alquilados as días_alquilados
from film
join películas_días on film.film_id=películas_días.film_id
where películas_días.días_alquilados>8

--como ctes antes de subconsulta
select film.film_id, film.title as Título, películas_días.días_alquilados as días_alquilados
from film
join (
with inventory_días as (
select inventory_id, extract(day from sum(return_date-rental_date))as días_alquilados
from rental
group by inventory_id
)
select film_id, sum(inventory_días.días_alquilados) as días_alquilados
from inventory
join inventory_días on inventory.inventory_id=inventory_días.inventory_id
group by inventory.film_id
) as películas_días
on film.film_id=películas_días.film_id

---58. Encuentra el título de todas las películas que son de la misma categoría
que ‘Animation’.

-- CTEs antes del SELECT
with películas_categoría_animación as (
select film_category.film_id, film_category.category_id, category.name as Nombre_Categoría
from film_category
join category on film_category.category_id=category.category_id
where category.name='Animation'
)
select film.film_id, film.title as Título, películas_categoría_animación.category_id as category_id, películas_categoría_animación.Nombre_Categoría
from film
join películas_categoría_animación on film.film_id=películas_categoría_animación.film_id


59. Encuentra los nombres de las películas que tienen la misma duración
que la película con el título ‘Dancing Fever’. Ordena los resultados
alfabéticamente por título de película.

--múltiples CTEs antes del SELECT
with duración_Dancing_Fever as (
select length
from film
where title='DANCING FEVER'
)
select film_id, title as Título, length as duración_minutos
from film 
where length in (select * from duración_Dancing_Fever)
order by title asc

--60. Encuentra los nombres de los clientes que han alquilado al menos 7
--películas distintas. Ordena los resultados alfabéticamente por apellido.

with clientes_películas_distintas as (
select rental.customer_id, count (distinct inventory.film_id) as películas_distintas
from rental
join inventory on rental.inventory_id=inventory.inventory_id
group by customer_id
)
select customer.customer_id, customer.first_name as Nombre, customer.last_name as Apellido, 
clientes_películas_distintas.películas_distintas as películas_distintas
from customer
join clientes_películas_distintas on customer.customer_id=clientes_películas_distintas.customer_id
where clientes_películas_distintas.películas_distintas>7
order by Apellido asc


------61. Encuentra la cantidad total de películas alquiladas por categoría y
muestra el nombre de la categoría junto con el recuento de alquileres.

select category.category_id, category.name as Categoría, count(rental.rental_id is not null) as Alquileres
from category
left join film_category on category.category_id=film_category.category_id
left join inventory on inventory.film_id=film_category.film_id 
left join rental on rental.inventory_id=inventory.inventory_id
group by category.category_id

--62. Encuentra el número de películas por categoría estrenadas en 2006.

with películas_estrenadas_2006 as ( 
select film_id
from film
where release_year=2006
)
select category.category_id, category.name as Categoría, count (películas_estrenadas_2006.film_id) as películas_estrenadas_2006
from category
join film_category on category.category_id=film_category.category_id
join películas_estrenadas_2006 on film_category.film_id=películas_estrenadas_2006.film_id
group by category.category_id

---63. Obtén todas las combinaciones posibles de trabajadores con las tiendas
--que tenemos.

select staff.staff_id, staff.first_name as Nombre_Trabajador, staff.last_name as Apellido_Trabajador, store.store_id
from staff
cross join store 

---64. Encuentra la cantidad total de películas alquiladas por cada cliente y
--muestra el ID del cliente, su nombre y apellido junto con la cantidad de
--películas alquiladas.

---asumiendo que películas alquiladas es alquileres (no me parece claro)
with películas_alquiladas as (
select customer_id, count (rental_id) as películas
from rental 
group by customer_id
)
select customer.customer_id, customer.first_name as nombre_cliente, customer.last_name as apellido_cliente, 
películas_alquiladas.películas
from customer
join películas_alquiladas on customer.customer_id=películas_alquiladas.customer_id

--asumiendo que películas alquiladas es películas distintas alquiladas
with películas_alquiladas as (
select rental.customer_id, count(distinct inventory.film_id) as películas
from rental
join inventory on rental.inventory_id=inventory.inventory_id
group by customer_id
) 
select customer.customer_id, customer.first_name as nombre_cliente, customer.last_name as apellido_cliente, 
películas_alquiladas.películas
from customer
join películas_alquiladas on customer.customer_id=películas_alquiladas.customer_id
