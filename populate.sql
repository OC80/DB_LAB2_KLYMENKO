INSERT INTO Directors (director_id, director_name)
	VALUES('FFC','Francis Ford Coppola');
INSERT INTO Directors (director_id, director_name)
	VALUES('FD','Frank Darabont');
INSERT INTO Directors (director_id, director_name)
	VALUES('CN','Christopher Nolan');
INSERT INTO Directors (director_id, director_name)
	VALUES('QT','Quentin Tarantino  ');
INSERT INTO Directors (director_id, director_name)
	VALUES('SS','"Steven Spielberg');
INSERT INTO Directors (director_id, director_name)
	VALUES('DF','David Fincher');
INSERT INTO Directors (director_id, director_name)
	VALUES('MS','Martin Scorsese');


INSERT INTO Genres (genre_id, genre_name)
	VALUES('COM','Comedy');
INSERT INTO Genres (genre_id, genre_name)
	VALUES('DRA','Drama');
INSERT INTO Genres (genre_id, genre_name)
	VALUES('THR','Thriller');
INSERT INTO Genres (genre_id, genre_name)
	VALUES('ACT','Action');
INSERT INTO Genres (genre_id, genre_name)
	VALUES('CRM','Crime');
INSERT INTO Genres (genre_id, genre_name)
	VALUES('SCF','Sci-Fi');
INSERT INTO Genres (genre_id, genre_name)
	VALUES('BIO','Biography');

INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('1','The Shawshank Redemption ','1994','A','142min','DRA','93','80','FD');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('2','The Godfather','1972','A','175min','CRM','92','100','FFC');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('3','The Dark Knight','2008','UA','152min','ACT','90','84','CN');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('4','Pulp Fiction','1994','A','154min','CRM','89','94','QT');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('5','Schindlers List','1993','A','195min','BIO','89','94','SS');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('6','Inception','2010','UA','148min','SCF','88','74','CN');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('7','Fight Club','1999','A','139min','DRA','88','66','DF');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('8','Se7en','1995','A','127min','CRM','86','65','DF');
INSERT INTO Films (movie_id, series_title, release_yea, certificate, runtime, genre_id, imdb_rating, meta_score, director_id)
	VALUES('9','Goodfellas','1990','A','146min','BIO','87','90','MS');
