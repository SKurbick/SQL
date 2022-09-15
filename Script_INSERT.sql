INSERT INTO genre (genre_name)
VALUES ('Pop'), ('Classic'), ('RnB'), ('Metall'),('Hip-hop');


INSERT INTO author (author_name)
VALUES('POPauthor1'), ('POP author 2'), ('POP author 3'),
('Classic author 1'),('Classic author 2'),
('RnB author 1'),('RnB author 2'),
('Metal author'),
('Hip-hop author');



INSERT INTO album(album_name, date_release)
VALUES 	('album 1', '2018-01-10'), ('album 2', '2018-02-10'),('album 3', '2010-04-10'),
		('album 4', '2017-10-10'),('album 5', '2020-05-05'),('album 6', '2018-12-11'),
		('album 7', '2015-01-02'),('album 8', '2000-06-01'),('album 9', '2007-12-10');


INSERT INTO compilation(comp_name, date_relise)
VALUES ('compilation 1', '2020-01-02'),('compilation 2', '2022-01-02'),('compilation 3', '2020-04-02'),
		('compilation 4', '2020-05-02'),('compilation 5', '2020-02-06'),('compilation 6', '2020-05-12'),
		('compilation 7', '2019-02-28'),('compilation 8', '2020-07-05');
	


INSERT INTO track (track_name, duration, album_id)
VALUES ('track 1', '00:02:39',2 ),('track 2', '00:05:09',1 ),('track 3', '00:02:59',5 ),
		('my track 4', '00:01:29',7 ),('track 5', '00:05:30', 2 ),('track 6', '00:12:30', 3),
		('track 7', '00:03:45', 8),('track 8', '00:10:25', 9 ),('track 9', '00:06:05',3),
		('track 10', '00:06:30',6 ),('track my 11', '00:07:00',1 ),('track 12', '00:09:15',5),
		('track 13', '00:3:39',7 ),('track 14', '00:5:59',6 ),('track 15 my', '00:09:39',4 );
	
INSERT INTO album_author (album_id, author_id)
VALUES (4,3),(6,7),(6,9);

INSERT INTO author_genre (author_id, genre_id)
VALUES (8,4),(3,1),(5,2),(4,2),(9,5),(2,1);
--
INSERT INTO compilation_track (comp_id, track_id)
VALUES (1,3),(2,5),(4,12),(4,15);
