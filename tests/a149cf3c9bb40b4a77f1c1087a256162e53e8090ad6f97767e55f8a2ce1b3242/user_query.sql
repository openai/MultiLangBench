CREATE TABLE result AS
SELECT a AS a,
       CASE (b,c,d) WHEN (1,2,3) THEN 'aleph'
                    WHEN (2,3,4) THEN 'bet'
                    WHEN (3,4,6) THEN 'gimel'
                    ELSE '-' END AS value,
       '|' AS marker
FROM t1
ORDER BY a;