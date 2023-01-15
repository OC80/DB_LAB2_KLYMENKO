INSERT INTO Director (director_id, director_name)
	VALUES('0','Francis Ford Coppola');
INSERT INTO Director (director_id, director_name)
	VALUES('1','Frank Darabont');
INSERT INTO Director (director_id, director_name)
	VALUES('2','Christopher Nolan');
INSERT INTO Director (director_id, director_name)
	VALUES('3','Quentin Tarantino  ');
INSERT INTO Director (director_id, director_name)
	VALUES('4','"Steven Spielberg');
INSERT INTO Director (director_id, director_name)
	VALUES('5','David Fincher');
INSERT INTO Director (director_id, director_name)
	VALUES('6','Martin Scorsese');


INSERT INTO Genre (genre_id, genre_name)
	VALUES('0','Comedy');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('1','Drama');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('2','Thriller');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('3','Action');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('4','Crime');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('5','Sci-Fi');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('6','Biography');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('7','History');
INSERT INTO Genre (genre_id, genre_name)
	VALUES('8','Adventure');


INSERT INTO Movies (movie_id, director_id, series_title, release_yea, certificate, runtime, imdb_rating, meta_score)
	VALUES('1', '1','The Shawshank Redemption ','1994','A','142min','93','80');
INSERT INTO Movies (movie_id, director_id, series_title, release_yea, certificate, runtime, imdb_rating, meta_score)
	VALUES('2', '0','The Godfather','1972','A','175min','92','100');
INSERT INTO Movies (movie_id, director_id, series_title, release_yea, certificate, runtime, imdb_rating, meta_score)
	VALUES('3', '2','The Dark Knight','2008','UA','152min', '90','84');
INSERT INTO Movies (movie_id, director_id, series_title, release_yea, certificate, runtime, imdb_rating, meta_score)
	VALUES('4', '3','Pulp Fiction','1994','A','154min', '89','94');
INSERT INTO Movies (movie_id, director_id, series_title, release_yea, certificate, runtime, imdb_rating, meta_score)
	VALUES('5', '4','Schindlers List','1993','A','195min','89','94');
INSERT INTO Movies (movie_id, director_id, series_title, release_yea, certificate, runtime, imdb_rating, meta_score)
	VALUES('6', '2','Inception','2010','UA','148min','88','74');
INSERT INTO Movies (movie_id, director_id, series_title, release_yea, certificate, runtime, imdb_rating, meta_score)
	VALUES('7', '5','Fight Club','1999','A','139min', '88','66');


INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('1', '1'); -- Shawshank Redemption, Drama
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('2', '4'); -- The Godfather, Crime
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('2', '1'); -- The Godfather, Drama
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('3', '3'); -- The Dark Knight, Action
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('3', '4'); -- The Dark Knight, Crime
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('3', '1'); -- The Dark Knight, Drama
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('4', '4'); -- Pulp Fiction, Crime
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('4', '1'); -- Pulp Fiction, Drama
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('5', '6'); -- Schindlers list, Biography
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('5', '1'); -- Schindlers list, Drama
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('5', '7'); -- Schindlers list, History
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('6', '3'); -- Inception, Action,
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('6', '8'); -- Inception, Adventure
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('6', '5'); -- Inception, Sci-Fi
INSERT INTO GenreMovies (movie_id, genre_id)
    VALUES ('7', '1'); -- Fight Club, Drama
