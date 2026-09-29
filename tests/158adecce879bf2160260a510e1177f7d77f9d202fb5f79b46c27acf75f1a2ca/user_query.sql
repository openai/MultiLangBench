CREATE TABLE sfi_result AS
SELECT artists.*
FROM artists
INNER JOIN artists AS 'b' ON (b.id = artists.id)
WHERE (artists.id IN (
  SELECT albums.artist_id
  FROM albums
  WHERE ((name = 'Al')
    AND (albums.artist_id IS NOT NULL)
    AND (albums.id IN (
      SELECT id
      FROM (
        SELECT albums.id,
               row_number() OVER (
                 PARTITION BY albums.artist_id
                 ORDER BY name
               ) AS 'x'
        FROM albums
        WHERE (name = 'Al')
      ) AS 't1'
      WHERE (x = 1)
    ))
    AND (albums.id IN (1, 2)))
));