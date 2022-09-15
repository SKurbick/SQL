CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(60),
	date_release date
);

CREATE TABLE IF NOT EXISTS track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(60),
	duration time,
	album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS author (
	author_id SERIAL PRIMARY KEY,
	author_name VARCHAR(60)
);
		
CREATE TABLE IF NOT EXISTS compilation (
	comp_id SERIAL PRIMARY KEY,
	comp_name VARCHAR(60),
	date_relise date
);

CREATE TABLE IF NOT EXISTS album_author (
	album_id INTEGER REFERENCES album(album_id),
	author_id INTEGER REFERENCES author(author_id)
);

CREATE TABLE IF NOT EXISTS author_genre (
genre_id INTEGER REFERENCES genre(genre_id),
author_id INTEGER REFERENCES author(author_id)
);

CREATE TABLE IF NOT EXISTS compilation_track (
comp_id INTEGER  REFERENCES compilation(comp_id),
track_id INTEGER  REFERENCES track(track_id)
);