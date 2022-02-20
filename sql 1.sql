use master;
show tables;
#Ejercico 1:  Selecciona las columnas type, title, director y country. Devuélvelas en una misma tabla
SELECT type,title, director,country FROM netflix_titles; #Si solo deseamos columnas en especifico

#Ejercicio 2: En la columna 'type' parece haber dos categorías 'Movies' y 'TV Shows'. ¿Cuántos títulos tenemos de cada tipo?
SELECT TYPE, COUNT(*) FROM netflix_titles GROUP BY type;

#Ejecicio 3: ¿Cuál es el país con la película más reciente en la base de datos (año de lanzamiento más reciente)?
SELECT country,MAX(release_year) FROM netflix_titles; 

SELECT country,director,min(release_year) FROM netflix_titles; 
SELECT title,cast,rating FROM netflix_titles WHERE duration = 1;
SELECT title,duration,description,country FROM netflix_titles WHERE listed_in = 'comedies';
SELECT title,duration,description,release_year FROM netflix_titles WHERE type='Movie' ORDER BY release_year DESC LIMIT 30;

$hola