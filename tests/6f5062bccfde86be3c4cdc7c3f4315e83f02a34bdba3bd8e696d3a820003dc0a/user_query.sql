INSERT INTO query_result(artist, total)
SELECT DISTINCT artist, sum(timesplayed) AS total
FROM songs
GROUP BY LOWER(artist)
LIMIT -1 OFFSET 2;