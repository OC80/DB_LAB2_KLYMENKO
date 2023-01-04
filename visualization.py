import psycopg2
import matplotlib.pyplot as plt

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
GROUP BY genre_name;
'''

query_3 = '''
    SELECT series_title as movie_title, meta_score as rating FROM Movies
WHERE release_yea > 1990
ORDER  BY meta_score DESC;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


with conn:
    cur = conn.cursor()

# query_1
    cur.execute(query_1)
    country = []
    n_films = []

    for row in cur:
        country.append(row[0])
        n_films.append(row[1])

    x_range = range(len(country))

    figure, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)

    bar_ax.bar(x_range, n_films, label='Total')
    bar_ax.set_title('Кількість фільмів кожного режиссера')
    bar_ax.set_xlabel('Режисери')
    bar_ax.set_ylabel('Кількість фільмів')
    bar_ax.set_xticks(x_range)
    bar_ax.set_xticklabels(country, rotation=45)

# query_2
    cur.execute(query_2)
    genres = []
    films = []

    for row in cur:
        genres.append(row[0])
        films.append(row[1])

    pie_ax.pie(films, labels=genres, autopct='%1.1f%%')
    pie_ax.set_title('Частка фільмів за жанром')

# query_3
    cur.execute(query_3)
    title = []
    ratings = []

    for row in cur:
        title.append(row[0])
        ratings.append(row[1])

    graph_ax.plot(title, ratings, marker='o')
    graph_ax.set_xlabel('Назви фільмів')
    graph_ax.set_ylabel('Meta Рейтинг')
    graph_ax.set_title('Топ Рейтинг фільмів після 1990 ')
    graph_ax.set_xticklabels(title, rotation=40)

    for qnt, price in zip(title, ratings):
        graph_ax.annotate(price, xy=(qnt, price), xytext=(7, 2), textcoords='offset points')


mng = plt.get_current_fig_manager()
mng.resize(1400, 750)

plt.subplots_adjust(left=0.1, bottom=0.19, right=0.94, top=0.9, wspace=0.4, hspace=0.4)

plt.show()
















