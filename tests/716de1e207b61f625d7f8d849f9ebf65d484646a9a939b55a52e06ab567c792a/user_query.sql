CREATE TABLE result AS
SELECT a AS a,
       CASE (b,c) WHEN (1,2) THEN 'aleph'
                  WHEN (2,3) THEN 'bet'
                  WHEN (3,4) THEN 'gimel'
                  ELSE '-' END AS value,
       '|' AS marker
FROM t1
ORDER BY a;