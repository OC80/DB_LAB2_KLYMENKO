CREATE TABLE Movies (
	Movie_ID int NOT NULL,
	Series_title char(255) NOT NULL,
	Release_Yea INT NOT NULL,
	Certificate char(5) NOT NULL,
	Runtime char(10) NOT NULL,
	Genre_ID char(100) NOT NULL,
	IMDB_Rating INT NOT NULL,
	Meta_Score INT NOT NULL,
	Director_ID char(3) NOT NULL
);


CREATE TABLE Director (
	Director_ID char(3) NOT NULL,
	Director_name char(100) NOT NULL
);


CREATE TABLE Genre (
	Genre_ID char(3) NOT NULL,
	Genre_name char(100) NOT NULL
);

ALTER TABLE Movies ADD PRIMARY KEY(Movie_ID);
ALTER TABLE Director ADD PRIMARY KEY(Director_ID);
ALTER TABLE Genre ADD PRIMARY KEY(Genre_ID);

ALTER TABLE Movies ADD CONSTRAINT FK_Movies_Genre FOREIGN KEY (Genre_ID) REFERENCES Genre(Genre_ID);
ALTER TABLE Movies ADD CONSTRAINT FK_Movies_Directors FOREIGN KEY (Director_ID) REFERENCES Director(Director_ID);







