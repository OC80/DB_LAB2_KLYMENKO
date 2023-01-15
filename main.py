import psycopg2

username = 'postgres'
password = '2711'
database = 'LAB2'
host = 'localhost'
port = '5432'

query_1 = '''
-- top ten directors by appearances in list
SELECT TRIM(director.director_name), COUNT(movies.director_id) FROM movies
INNER JOIN director ON director.director_id = movies.director_id
GROUP BY director.director_name
ORDER BY COUNT(movies.director_id) DESC
LIMIT 10
'''

query_2 = '''
-- the most popular genres on movies
SELECT TRIM(genre.genre_name), COUNT(GenreMovies.genre_id) FROM GenreMovies
JOIN genre ON genre.genre_id = GenreMovies.genre_id
GROUP BY genre_name
ORDER BY COUNT(GenreMovies.genre_id) DESC;
'''

query_3 = '''
-- movies per year diagram
SELECT movies.release_yea, COUNT(movies.movie_id) FROM movies
GROUP BY movies.release_yea
ORDER BY movies.release_yea DESC
'''

conn = psycopg2.connect(user=username, password=password,
                        dbname=database, host=host, port=port)
print(type(conn))

with conn:

    print("Database opened successfully")

    cur = conn.cursor()

    print('1.\n')
    cur.execute(query_1)
    for row in cur:
        print(row)

    cur.execute(query_2)
    print('2.\n')
    for row in cur:
        print(row)

    cur.execute(query_3)
    print('3.\n')
    for row in cur:
        print(row)
