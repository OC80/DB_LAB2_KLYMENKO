-- top ten directors by appearances in list
SELECT director.director_name, COUNT(movies.director_id) FROM movies
INNER JOIN director ON director.director_id = movies.director_id
GROUP BY director.director_name
ORDER BY COUNT(movies.director_id) DESC
LIMIT 10

-- the most popular genres on movies
SELECT TRIM(genre.genre_name), COUNT(GenreMovies.genre_id) FROM GenreMovies
JOIN genre ON genre.genre_id = GenreMovies.genre_id
GROUP BY genre_name
ORDER BY COUNT(GenreMovies.genre_id) DESC;

-- movies per year diagram
SELECT movies.release_yea, COUNT(movies.movie_id) FROM movies
GROUP BY movies.release_yea
ORDER BY movies.release_yea DESC