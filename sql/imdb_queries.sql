TASK 1.1

SELECT name FROM movies WHERE year=1995

TASK 1.2

SELECT COUNT(*)
FROM actors a
JOIN roles r ON a.id = r.actor_id
JOIN movies m ON r.movie_id = m.id
WHERE m.name="Lost In Translation"

TASK 1.3

SELECT first_name, last_name
FROM actors a
JOIN roles r ON a.id = r.actor_id
JOIN movies m ON r.movie_id = m.id
WHERE m.name="Lost In Translation";


TASK 1.4

SELECT d.first_name, d.last_name
FROM directors d
JOIN movies_directors md ON md.director_id = d.id
JOIN movies m ON m.id = md.movie_id
WHERE m.name="Fight Club";

TASK 1.5

SELECT COUNT(*)
FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN directors d ON md.director_id = d.id
WHERE d.first_name = "Clint"
AND d.last_name = "Eastwood";


TASK 1.6

SELECT m.name
FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN directors d ON md.director_id = d.id
WHERE d.first_name = "Clint"
AND d.last_name = "Eastwood";

TASK 1.7

SELECT DISTINCT d.first_name, d.last_name
FROM directors d
JOIN movies_directors md ON md.director_id = d.id
JOIN movies_genres mg ON mg.movie_id = md.movie_id
WHERE mg.genre = "Horror";

TASK 1.8

SELECT DISTINCT a.first_name, a.last_name
FROM actors a
JOIN roles r ON a.id = r.actor_id
JOIN movies m ON m.id = r.movie_id
JOIN movies_directors md ON md.movie_id = m.id
JOIN directors d ON md.director_id = d.id
WHERE d.first_name = "Christopher"
AND d.last_name = "Nolan";