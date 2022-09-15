SELECT album_name, date_release FROM album
WHERE date_release BETWEEN  '2018-01-01' and '2018-12-31';

SELECT track_name, duration FROM track
ORDER BY 2 DESC 
LIMIT  1;

SELECT track_name, duration FROM track
WHERE duration > '00:03:30';

SELECT comp_name FROM compilation
WHERE date_relise BETWEEN '2018-01-01' and '2020-12-31';

SELECT author_name FROM author
WHERE author_name  not LIKE  '% %';

SELECT track_name FROM track
WHERE track_name LIKE 'my %' or track_name LIKE'% my' or track_name LIKE '% my %';
