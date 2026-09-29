CREATE TABLE result AS
SELECT d AS gd, e AS ge, count(DISTINCT f) AS n FROM t2 GROUP BY d,e;