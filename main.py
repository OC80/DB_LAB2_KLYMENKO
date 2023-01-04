import psycopg2

username = 'postgres'
password = '2711'
database = 'LAB2'
host = 'localhost'
port = '5432'

query_1 = '''
    SELECT TRIM(Director.director_name) AS director, COUNT(Movies.Director_ID) FROM Movies 
JOIN Director ON director.Director_ID = Movies.director_id
GROUP BY director_name;
'''

query_2 = '''
    SELECT genre.genre_name AS genre, COUNT(Movies.genre_id) FROM Movies 
JOIN genre ON genre.genre_id = Movies.genre_id
GROUP BY genre_name
'''

query_3 = '''
    SELECT series_title as movie_title, meta_score as rating FROM Movies
WHERE release_yea > 1990
ORDER  BY meta_score DESC;
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