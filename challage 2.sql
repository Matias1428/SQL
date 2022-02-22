-- 1.
-- Utiliza un INNER JOIN para cruzar la tablas cities y countries.
-- Selecciona el nombre de la ciudad (con alias 'city'), el código 
-- de país, el nombre del país (con alias 'country') y la columna 
-- city_prop_population (población propia de la ciudad).
--  Finalmente, ordena en orden descendente por la columna que ambas
--  tablas tienen en común.

-- 2. Utiliza un LEFT JOIN para cruzar la tablas countries y languages.
-- Selecciona el país (con alias 'country'), el nombre local 
-- del país (local_name), el nombre del idioma y, finalmente, 
-- el porcentaje del idioma hablado en cada país


-- 3. Utiliza nuevamente un LEFT JOIN (o RIGHT JOIN si quiere alocarte un poco 🤓) para cruzar las tablas countries y economies.
-- Selecciona el nombre del país, región y GDP per cápita 
-- (de economies). Finalmente, filtra las filas para obtener 
-- solo los resultados del año 2010.


-- 4. Veamos si aprendiste la diferencia entre LEFT JOIN y 
-- RIGHT JOIN. Convierte el siguiente ejemplo para utilizar 
-- RIGHT JOINs pero obteniendo el mismo resultado.

SELECT *
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code
SELECT countries.country_name as country, countries.local_name, languages.lang_id, languages.percent
FROM countries
LEFT JOIN languages
ON countries.code = languages.code
SELECT countries.country_name, countries.region, economies.gdp_percapita, economies.year
FROM countries
LEFT JOIN economies
ON countries.code = economies.code
WHERE economies.year= 2010