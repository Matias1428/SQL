use master;
show tables;

SELECT * FROM netflix_titles;
-- PK id netfilx titles es show_id

SELECT * FROM netflix_activity; 
-- fk user_id de netflix_users
-- fk show de netflix_titles

SELECT * FROM netflix_users;
-- id de netfilx_users es user_id

-- SELECT <nombre_tabla_izq>.<nombre_columna>, <nombre_tabla_der>.<nombre_columna>
-- FROM <nombre_tabla_izq>
-- (INNER) JOIN <nombre_tabla_der> 
-- ON <nombre_tabla_izq>.<llave>=<nombre_tabla_der>.<llave>


SELECT netflix_titles.show_id, netflix_titles.title, netflix_activity.user_id
FROM netflix_titles
INNER JOIN netflix_activity
ON netflix_titles.show_id=netflix_activity.show
ORDER BY show_id;


-- SELECT <nombre_tabla_izq>.<nombre_columna>, <nombre_tabla_der>.<nombre_columna>
-- FROM <nombre_tabla_izq>
-- (LEFT) JOIN <nombre_tabla_der> 
-- ON <nombre_tabla_izq>.<llave>=<nombre_tabla_der>.<llave>


SELECT netflix_titles.show_id, netflix_titles.title, netflix_activity.user_id, netflix_users.nombre
FROM netflix_titles
INNER JOIN netflix_activity
ON netflix_titles.show_id=netflix_activity.show
LEFT JOIN netflix_users
ON netflix_activity.user_id=netflix_users.user_id
ORDER BY show_id;


SELECT netflix_titles.show_id, netflix_titles.title, netflix_activity.user_id, netflix_users.nombre
FROM netflix_titles
CROSS JOIN netflix_activity
ON netflix_titles.show_id=netflix_activity.show
LEFT JOIN netflix_users
ON netflix_activity.user_id=netflix_users.user_id
ORDER BY show_id;

-- SELECT <nombre_tabla_izq>.<nombre_columna> AS <alias>, <nombre_subquery>.<nombre_columna>  AS <alias>
-- FROM <nombre_tabla_izq>
-- (INNER) JOIN (
--  SELECT <nombre_columna1>, FUNCION_AGG(<nombre_columna2>)
--  FROM <nombre_tabla_der>
--  GROUP BY <nombre_columna1>
-- ) AS <nombre_subquery>
-- ON <nombre_tabla_izq>.<llave>=<nombre_subquery>.<llave>