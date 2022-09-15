--количество исполнителей в каждом жанре; - DONE
SELECT count(author_name) AS Количество
FROM
genre INNER JOIN author_genre ON  genre.genre_id = author_genre.genre_id
INNER JOIN author ON author_genre.author_id = author.author_id
GROUP BY  genre_name
ORDER BY 1;

--количество треков, вошедших в альбомы 2019-2020 годов; DONE
SELECT  count(track_name) AS Количество
FROM
track INNER JOIN album ON track.album_id = album.album_id
WHERE date_release BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY album_name;

--средняя продолжительность треков по каждому альбому; DONE
SELECT  album_name, AVG(duration) AS СРЕДНЕЕ_ВРЕМЯ
FROM
track INNER JOIN album ON track.album_id = album.album_id
GROUP BY album_name;

--все исполнители, которые не выпустили альбомы в 2020 году;
SELECT author_name, album_name, date_release
FROM
album RIGHT JOIN album_author ON  album.album_id= album_author.album_id
RIGHT JOIN author ON album_author.author_id = author.author_id
WHERE date_release <= '2020-01-01' or date_release >= '2020-12-31';
;


--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT comp_name
FROM
compilation LEFT JOIN compilation_track ON compilation.comp_id = compilation_track.comp_id
LEFT JOIN track ON compilation_track.track_id = track.track_id
LEFT JOIN album ON track.album_id = album.album_id
LEFT JOIN album_author ON album.album_id= album_author.album_id
LEFT JOIN author ON album_author.author_id =author.author_id
WHERE author_name = 'POP author 3'
order by 1;


--название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT  album_name, count(genre_name) as amount
FROM
album LEFT JOIN album_author ON album.album_id =album_author.album_id
LEFT JOIN author ON album_author.author_id = author.author_id
LEFT JOIN author_genre ON author.author_id = author_genre.author_id
LEFT JOIN genre ON author_genre.genre_id = genre.genre_id
GROUP BY album_name
having  count(genre_name) > 1;

--наименование треков, которые не входят в сборники;
SELECT track_name FROM
track LEFT JOIN compilation_track ON track.track_id = compilation_track.track_id
LEFT JOIN compilation ON compilation_track.comp_id =compilation.comp_id
WHERE comp_name IS NULL;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT duration FROM
author LEFT JOIN album_author ON author.author_id = album_author.author_id
LEFT JOIN album ON album_author.album_id = album.album_id
LEFT JOIN track ON album.album_id = track.album_id
WHERE duration = (
SELECT min(duration) FROM
author LEFT JOIN album_author ON author.author_id = album_author.author_id
LEFT JOIN album ON album_author.album_id = album.album_id
LEFT JOIN track ON album.album_id = track.album_id);
--(пытался сократить запрос, интуитивно кажется длиннее необходимого, буду благодарен за разбор данного блока)

--название альбомов, содержащих наименьшее количество треков
SELECT album_name, count(track_id) AS amount_track
FROM album  JOIN track ON album.album_id = track.album_id
GROUP BY album_name
HAVING COUNT(track_id) = (SELECT count(track_id)
FROM album  JOIN track ON album.album_id = track.album_id
GROUP BY album_name
LIMIT 1);

